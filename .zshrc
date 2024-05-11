
export ZSH="$HOME/.oh-my-zsh"

# ------
# SSH-AGENT
eval "$(ssh-agent -s)"
# ------

# ------
# NORMINETTE
export PATH="$HOME/.local/bin:$PATH"
# -------

ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# -------
# INFO
export USER="aapadill"
export MAIL="aapadill@student.hive.fi"
# -------

# -------
# ALIASES
# -------
alias l="ls" # List files in current directory
alias ll="ls -al" # List all files in current directory in long list format
alias o="open ." # Open the current directory in Finder
alias n="norminette -R CheckDefine" #run norminette with flags
alias ccft="cc -Wall -Wextra -Werror" #cc with 42 flags
alias gccft="gcc -Wall -Wextra -Werror" #gcc with 42 flags

# Created by `pipx` on 2024-04-16 16:45:15
# export PATH="$PATH:/Users/deblish/.local/bin"

alias francinette=/Users/deblish/francinette/tester.sh

alias paco=/Users/deblish/francinette/tester.sh
