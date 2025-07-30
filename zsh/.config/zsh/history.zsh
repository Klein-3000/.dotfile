# 保存历史记录到文件
HISTFILE=~/.zsh_history

# 增加可存储的历史命令数量
HISTSIZE=10000

# 增加保存到历史文件中的命令数量
SAVEHIST=10000

# 防止重复的命令被多次记录，并忽略空命令
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS

# 当history被调用时，自动从所有终端的历史记录中合并
setopt APPEND_HISTORY
setopt SHARE_HISTORY

# 在执行命令之前，将该命令添加到历史列表中
setopt INC_APPEND_HISTORY

# 添加额外的安全措施，如防止历史记录中出现重复条目
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
