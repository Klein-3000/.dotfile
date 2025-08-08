
# 🖥️ mylinux - 我的 Linux 配置管理仓库

这是一个基于 GNU Stow 的 dotfile 管理项目，用于统一管理我的 Linux/macOS 开发环境配置。通过简单的脚本一键部署，支持灵活扩展。

---

## 📦 包含的配置

| 工具 | 说明 |
|------|------|
| `zsh` | 使用 [zinit](https://github.com/zdharma-continuum/zinit) 作为插件管理器，主题为 [Powerlevel10k](https://github.com/romkatv/powerlevel10k) |
| `nvim` | Neovim 配置（建议搭配 `fd`、`rg` 使用） |
| `vim` | Vim 配置 |
| `fzf` | 模糊查找工具 |
| `fastfetch` | 系统信息显示（美化版 `neofetch`） |
| `tmux` | 终端复用工具配置 (使用catppuccin/tmux--v2.1.3美化状态栏)|
| `gitconfig` | Git 全局配置 |

---

## ⚙️ 安装方法

### 1. 安装依赖

确保系统已安装以下工具：

```bash
# Debian/Ubuntu
sudo apt install stow git zsh

# CentOS/RHEL
sudo yum install stow git zsh
# 或
sudo dnf install stow git zsh

# macOS (使用 Homebrew)
brew install stow git
```
> 💡 推荐手动安装最新版 `zsh` 和 `stow`。

---

### 2. 克隆仓库

> ⚠️ 建议克隆到 `~/.dotfile` 或 `~/.dotfiles`
```bash
git clone https://github.com/Klein-3000/mylinux.git ~/.dotfile 
cd ~/.dotfile
```
### 3. 配置要安装的包（关键步骤）

编辑 `stow_packages.txt` 文件，**每行**写**一个**要启用的配置包名：
```txt
zsh 
nvim 
fzf 
fastfetch 
gitconfig 
tmux 
vim
```
- ✅ 支持添加注释：以 `#` 开头的行会被忽略
- ✅ 空行会被跳过
- ✅ 添加新包？只需创建目录 + 在此文件中添加名字即可

📌 示例：
```bash
# 基础配置
zsh
gitconfig

# 编辑器
nvim
vim

# 工具
fzf
fastfetch
```
### 4. 运行安装脚本
```bash
# ~/dotfile
bash install.sh
```
脚本会：
- 使用 `stow` 符号链接配置文件到 `~`
- 设置 `zsh` 为默认 shell
- 自动运行 `~/.fzf/install`（如果存在）
- 创建全局 `fzf` 命令（需 `sudo` 权限）
### 5. 重启终端
```zsh
# 在zsh中
exec zsh
```
或直接关闭并重新打开终端。
## 🔁 脚本可重复执行吗？

✅ **可以！但需注意：**

- `stow` 会跳过已存在的符号链接，**不会覆盖已有文件**。
- 如果目标路径已有同名**普通文件或目录**（非符号链接），`stow` 会报错，需手动处理冲突。
- `chsh` 设置默认 shell 多次执行无副作用。
- `fzf` 安装脚本具有幂等性，重复运行安全。
- `/usr/local/bin/fzf` 链接使用 `ln -sf`，会自动覆盖旧链接。

> ✅ 建议：修改配置后重新运行脚本是安全的。
## ➕ 如何添加新配置？

1. 在仓库根目录创建新文件夹，如 `alacritty/`
2. 放入你的配置文件（保持相对路径，如 `alacritty/alacritty.yml`）
3. 在 `stow_packages.txt` 中添加一行：
```txt
alacritty
```
1. 重新运行 `./install.sh`

> ✅ 无需修改 `install.sh` 脚本！

## 🧰 推荐安装的工具

| 工具     | 用途                | 安装方式                                            |
| ------ | ----------------- | ----------------------------------------------- |
| `fd`   | 快速文件查找（Neovim 使用） | `cargo install fd-find` 或 `apt install fd-find` |
| `rg`   | Ripgrep，超快文本搜索    | `cargo install ripgrep` 或 `apt install ripgrep` |
| `yazi` | 高性能文件管理器          | `cargo install yazi`                            |
| `tldr` | 简化版命令手册           | `npm install -g tldr` 或 `apt install tldr`      |