#!/bin/sh
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# history
HISTFILE=~/.zsh_history

ZSH_THEME="bureau"

# source
plug "$HOME/.config/zsh/aliases.zsh"
plug "$HOME/.config/zsh/exports.zsh"

# plugins
plug "esc/conda-zsh-completion"
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"
plug "zap-zsh/supercharge"
plug "zap-zsh/vim"
plug "zap-zsh/zap-prompt"
plug "zap-zsh/fzf"
plug "zap-zsh/exa"
plug "zsh-users/zsh-syntax-highlighting"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
export CLOUDSDK_PYTHON=/Users/kverma/.pyenv/versions/3.8.10/bin/python3.8
bindkey '^ ' autosuggest-clear 
# eval "$(starship init zsh)"

bindkey '^a' autosuggest-accept
bindkey -s '^o' 'ranger^M'
bindkey -s '^f' 'zi^M'


# export $PWD=~/Programming/command/
# function _upgrade_rcs() {
#   ORIGIN_DIR=$PWD
#   cd ../react-shared-components/ || exit
#   yarn install
#   cd "$ORIGIN_DIR"
#   npx google-artifactregistry-auth
#   yarn upgrade file:../react-shared-components/lib
# }
# alias yursc="_upgrade_rcs"
# plug "jeffreytse/zsh-vi-mode"

# function zvm_after_init() {
#   [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#  eval "$(zoxide init zsh)"

# bindkey '^a' autosuggest-accept
# bindkey -s '^o' 'ranger^M'
# bindkey -s '^f' 'zi^M'
# }

# function my_custom_widget() {
#   echo 'Hello, ZSH!'
# }

# # The plugin will auto execute this zvm_after_lazy_keybindings function
# function zvm_after_lazy_keybindings() {
#   # Here we define the custom widget
#   zvm_define_widget my_custom_widget

#   # In normal mode, press Ctrl-E to invoke this widget

# zvm_bindkey vicmd '^a' autosuggest-accept
#   zvm_bindkey vicmd '^E' my_custom_widget
# zvm_bindkey vicmd -s '^f' 'zi'
# }

# keybinds


gch() {
  git checkout "$(git branch --all | fzf | tr -d '[:space:]')"
}

# bindkey -s '^f' 'zi^M'
bindkey -s '^b' 'gch\n'

export PATH="$HOME/.local/bin":$PATH
export PATH="/Users/kverma/.local/share/bob/nvim-bin:$PATH" 
export CLOUDSDK_PYTHON="/Users/kverma/.pyenv/versions/3.7.12/bin/python"
export PATH=$PATH:~/.bun/bin
# export PATH="/usr/local/opt/openjdk@17/bin:$PATH" 



# if
# 	command -v bat &
# 	>/dev/null
# then
# 	alias cat="bat -pp --theme \"Visual Studio Dark+\""
# 	alias catt="bat --theme \"Visual Studio Dark+\""
# fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(zoxide init zsh)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kverma/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kverma/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kverma/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kverma/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="$HOME/.tfenv/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="/Applications/IntelliJ IDEA.app/Contents/MacOS:$PATH"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export CLOUDSDK_PYTHON=/Users/kverma/.pyenv/versions/3.8.10/bin/python3.8

# PASSWORD=$(kubectl get secret api-service-sql-credentials -o jsonpath='{.data.password}' | base64 --decode ; echo) export password=$PASSWORD

# bun completions
[ -s "/Users/kverma/.bun/_bun" ] && source "/Users/kverma/.bun/_bun"
