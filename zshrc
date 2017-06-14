fpath=( "$HOME/.zfunctions" $fpath )
# Usethe ``pure'' theme
autoload -U promptinit; promptinit
prompt pure

# plugins 
source $HOME/.zplug/init.zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting", use:"zsh-syntax-highlighting.zsh"
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
## Then, source plugins and add commands to $PATH
zplug load 
### plugins settings
# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Make sure brew works
export PATH="/usr/local/bin:$PATH"

# Python
export PYENV_ROOT="/usr/local/var/pyenv"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# alias
alias ls='ls -Gp'
alias vim='mvim -v'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export JAVA_HOME="$(eval /usr/libexec/java_home -v 1.8)"
export GOROOT="/usr/local/opt/go/libexec/"
export GOPATH="$HOME/Documents/codes/go"
export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"
export EDITOR=vim
export VIFM=$HOME/.vifm/

unamestr=`uname`
if [[ "$unamestr" == 'Darwin' ]]; then
export PATH="$PATH:/usr/local/texlive/2016basic/bin/x86_64-darwin"
export OPENSSL_ROOT_DIR="/usr/local/opt/openssl"
export OPENSSL_INCLUDE_DIR="$OPENSSL_ROOT_DIR/include"
fi

