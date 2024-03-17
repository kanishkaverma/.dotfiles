#!/bin/sh
alias j='z'
alias f='zi'
alias g='lazygit'
alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"
alias nvimrc='nvim ~/.config/nvim/'
alias yay="paru"
alias vi="nvim"
alias c="code"
alias l="lvim"
alias gg="lazygit"
alias kb="kubectl"
# Aliases
alias g='git'
# compdef g=git
alias gst='git status'
# compdef _git gst=git-status
alias gl='git pull'
# compdef _git gl=git-pull
alias gup='git fetch && git rebase'
# compdef _git gup=git-fetch
alias gp='git push'
# compdef _git gp=git-push
gdv() { git diff -w "$@" | view - }
# compdef _git gdv=git-diff
alias gc='git commit -v'
# compdef _git gc=git-commit
alias gca='git commit -v -a'
# compdef _git gca=git-commit
alias gco='git checkout'
# compdef _git gco=git-checkout
alias gcm='git checkout master'
alias gb='git branch'
# compdef _git gb=git-branch
alias gba='git branch -a'
# compdef _git gba=git-branch
alias gcount='git shortlog -sn'
# compdef gcount=git
alias gcp='git cherry-pick'
# compdef _git gcp=git-cherry-pick
alias glg='git log --stat --max-count=5'
# compdef _git glg=git-log
alias glgg='git log --graph --max-count=5'
# compdef _git glgg=git-log
alias gss='git status -s'
# compdef _git gss=git-status
alias ga='git add'
# compdef _git ga=git-add
alias gm='git merge'
# compdef _git gm=git-merge
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'

# Git and svn mix
alias git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'
# compdef git-svn-dcommit-push=git

alias gsr='git svn rebase'
alias gsd='git svn dcommit'
#
# Will return the current branch name
# Usage example: git pull origin $(current_branch)
#
function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

function current_repository() {

  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo $(git remote -v | cut -d':' -f 2)
}

# these aliases take advantage of the previous function
alias ggpull='git pull origin $(current_branch)'
# compdef ggpull=git
alias ggpush='git push origin $(current_branch)'
# compdef ggpush=git
alias ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'
# compdef ggpnp=git

# alias lvim='nvim -u ~/.local/share/lunarvim/lvim/init.lua --cmd "set runtimepath+=~/.local/share/lunarvim/lvim"'

# get fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# Remarkable
alias remarkable_ssh='ssh root@10.11.99.1'
alias restream='restream -p'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# easier to read disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4 | head -5'

# get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3 | head -5'

gch() {
 git checkout “$(git branch — all | fzf| tr -d ‘[:space:]’)”
}

# gpg encryption
# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

# For when keys break
alias archlinx-fix-keys="sudo pacman-key --init && sudo pacman-key --populate archlinux && sudo pacman-key --refresh-keys"

# systemd
alias mach_list_systemctl="systemctl list-unit-files --state=enabled"

alias mach_java_mode="export SDKMAN_DIR="$HOME/.sdkman" && [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh""

alias m="git checkout master"
alias s="git checkout stable"

if [[ $TERM == "xterm-kitty" ]]; then
  alias ssh="kitty +kitten ssh"
fi

case "$(uname -s)" in

Darwin)
	# echo 'Mac OS X'
	alias ls='ls -G'
	;;

Linux)
	alias ls='ls --color=auto'
	;;

CYGWIN* | MINGW32* | MSYS* | MINGW*)
	# echo 'MS Windows'
	;;
*)
	# echo 'Other OS'
	;;
esac
