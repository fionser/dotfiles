fpath=( "$HOME/.zfunctions" $fpath )
# Usethe ``pure'' theme
autoload -U promptinit; promptinit
prompt pure

#GOROOT
export GOPATH="$HOME/Documents/codes/go"
export LGOPATH="$HOME/bin"
export PATH="$PATH:$GOPATH/bin"
# local bin
export PATH="$HOME/bin:/home/riku/.gem/ruby/2.4.0/bin:$PATH"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/lib:/usr/local/lib"
export CPATH="$CPATH:$HOME/include"

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
export CLION_HOME="$HOME/Public/clion"
# Idea
export IDEA_HOME="$HOME/Public/idea"
# NodeEnv
export PATH="$PATH:$HOME/.nodeenv/bin"
eval "$(nodenv init -)"

# alias
alias ls='ls --color=auto'
alias tmux='tmux -2'
bindkey -e # control + XX in tmux 
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=vim

SAVEHIST=1000
HISTSIZE=1000
HISTFILE=$HOME/.zsh_history
