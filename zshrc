fpath=( "$HOME/.zfunctions" $fpath )
# Usethe ``pure'' theme
autoload -U promptinit; promptinit
prompt pure

# plugins 
source $HOME/.zplug/init.zsh
zplug "plugins/git", from:oh-my-zsh
zplug "wting/autojump"
zplug "zsh-users/zsh-syntax-highlighting", use:"zsh-syntax-highlighting.zsh"
zplug "jimeh/zsh-peco-history"
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
## Then, source plugins and add commands to $PATH
zplug load 

# autojuump
[[ -s /home/riku/.autojump/etc/profile.d/autojump.sh ]] && source /home/riku/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

# python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Clion
export IDE_HOME="$HOME/Public/clion"

# alias
alias ls='ls --color=auto'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=vim

SAVEHIST=100
HISTFILE=$HOME/.zsh_history
