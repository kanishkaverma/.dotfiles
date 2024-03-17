#!/bin/sh
# HISTFILE="$XDG_DATA_HOME"/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000
export EDITOR="lvim"
export EDITOR="$VISUAL"
export GIT_EDITOR="lvim"
#export TERMINAL="kitty"
#export BROWSER="brave"
export PATH="$HOME/.local/bin":$PATH
export MANPAGER='nvim +Man!'
export MANWIDTH=999
export PATH=$HOME/.cargo/bin:$PATH
# export PATH="$PATH:$(yarn global bin)"
#export PATH=$HOME/.local/share/go/bin:$PATH
#export GOPATH=$HOME/.local/share/go
export PATH=$HOME/.fnm:$PATH
#export PATH="$HOME/.local/share/neovim/bin":$PATH
#export XDG_CURRENT_DESKTOP="Wayland"
#export PATH="$PATH:./node_modules/.bin"
#eval "$(zoxide init zsh)"
eval $(/opt/homebrew/bin/brew shellenv)
eval "$(fnm env --use-on-cd)"
export PATH="/usr/local/opt/openjdk@17/bin:$PATH"
# export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
# export CPPFLAGS="-I/opt/homebrew/opt/openjdk@17/include"
# export PATH="/usr/local/opt/openjdk@17/bin:$PATH"

# eval "`pip completion --zsh`"

export AUTH0_CLIENT_ID=FaCOIHPQcCmetjfUQcpQJEV7hH3GO6So
export AUTH0_CLIENT_SECRET=SI3RmgPN3dkEeHkRXBvJkdztXJufwEXjp3cD030GDl_UejyvfOlXMXhj8920SabX
export AUTH0_CONNECTION_TYPES_WITHOUT_EMAIL_VERIFIED=oidc,samlp,waad
export PROJECT=cysiv-dev-kanishkav
export SHARED_PROJECT=eng-node-163913
export SPRING_DATASOURCE_TOMCAT_MAXACTIVE=5
export SPRING_DATASOURCE_TOMCAT_INITIALSIZE=1
export SPRING_DATASOURCE_TOMCAT_MAXIDLE=2
export REDIS_HOST=localhost

export PATH=$PATH:/Users/kverma/Downloads/protoc-22.3-osx-universal_binary/bin

function _upgrade_rcs() {
  ORIGIN_DIR=~/programming/command/
  cd $ORIGIN_DIR/react-shared-components/ || exit
  yarn install
  cd "$ORIGIN_DIR"
  npx google-artifactregistry-auth
  yarn upgrade file:../react-shared-components/lib
}
alias upg="_upgrade_rcs"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$("$HOME/.miniconda/bin/conda" 'shell.zsh' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
	eval "$__conda_setup"
else
	if [ -f "$HOME/.miniconda/etc/profile.d/conda.sh" ]; then
		. "$HOME/.miniconda/etc/profile.d/conda.sh"
	else
		export PATH="$HOME/.miniconda/bin:$PATH"
	fi
fi
unset __conda_setup
# <<< conda initialize <<<
