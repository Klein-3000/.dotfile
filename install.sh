#!/bin/bash

# 安全模式：出错即停止 + 未定义变量报错
set -euo pipefail

# 获取脚本所在目录（真实路径，支持符号链接）
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"

# 日志函数
log() { echo -e "\033[1;32m[INFO]\033[0m $*"; }
warn() { echo -e "\033[1;33m[WARN]\033[0m $*"; }
error() { echo -e "\033[1;31m[ERROR]\033[0m $*"; }

# 检查命令是否存在
require_cmd() {
    if ! command -v "$1" &> /dev/null; then
        error "命令 '$1' 未安装，请先安装。"
        exit 1
    fi
}

# 主函数
main() {
    log "🚀 开始安装 dotfile 配置..."

    # 检查依赖
    require_cmd stow
    require_cmd zsh

    # 进入 .dotfile 目录
    cd "$SCRIPT_DIR"  # 关键：进入目录后再 stow
    log "📁 当前工作目录: $(pwd)"

    # 读取包列表
    while IFS= read -r package || [ -n "$package" ]; do
        [[ -z "$package" || "$package" =~ ^[[:space:]]*# ]] && continue

        if [ -d "$package" ]; then
            log "🔗 应用 stow: $package"
            # 使用默认行为，去掉 --no-folding
            stow "$package"
        else
            warn "跳过 $package: 目录不存在"
        fi
    done < "stow_packages.txt"

    # 设置默认 shell
    local zsh_path=$(which zsh)
    if [ -n "$zsh_path" ] && [ "$SHELL" != "$zsh_path" ]; then
        log "🐚 设置默认 shell 为 zsh"
        chsh -s "$zsh_path"
    fi

    # 安装 fzf 脚本（如果存在）
    local fzf_install="$HOME/.fzf/install"
    if [ -f "$fzf_install" ]; then
        log "🔧 运行 fzf 安装脚本"
        chmod +x "$fzf_install"
        "$fzf_install" --all --no-bash --no-update-rc
    else
        warn "未找到 \$HOME/.fzf/install。如需 fzf 功能，请运行："
        warn "  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install"
    fi

    # 创建 fzf 全局命令链接（可选）
    if [ -x "$HOME/.fzf/bin/fzf" ] && [ ! -e "/usr/local/bin/fzf" ]; then
        if command -v sudo &> /dev/null; then
            log "🔗 创建全局 fzf 命令"
            sudo ln -sf "$HOME/.fzf/bin/fzf" "/usr/local/bin/fzf"
        else
            warn "sudo 不可用，请手动将 \$HOME/.fzf/bin 添加到 PATH"
        fi
    fi

    # 安装后提示
    cat << 'EOF'

✅ 所有配置已安装完成！

💡 推荐安装以下工具（用于 nvim 等）：
  - fd:      cargo install fd-find     或   apt install fd-find
  - ripgrep: cargo install ripgrep     或   apt install ripgrep
  - yazi:    cargo install yazi        或   使用包管理器
  - tldr:    npm install -g tldr       或   apt install tldr

📌 请重新启动终端，或运行：
   exec zsh
EOF
}

# 执行主函数
main "$@"
