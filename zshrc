# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
#zstyle :compinstall filename '/home/awygle/.zshrc'

#autoload -Uz compinit
#compinit
# End of lines added by compinstall
#

autoload -U colors && colors
autoload -U compinit
compinit -d ~/.zcompdumps/`hostname`
setopt localoptions
setopt localtraps
setopt promptsubst
setopt cshnullglob
setopt incappendhistory
setopt extendedhistory
setopt histignoredups
setopt histreduceblanks

RPS1='%{$fg_no_bold[white]%}%T%{$fg_no_bold[white]%}'
PS1='%{${fg_bold[blue]}%}[%{${fg_bold[green]}%}%n%{${fg_bold[cyan]}%}@%{${fg_no_bold[red]}%}%m%{${fg_bold[blue]}%}: %10<...<%~%<< %{$bg[red]%}%(?..%{${fg_bold[white]}%}ERROR: %?%{${fg_bold[blue]}%})%{$bg[default]%}]%# %{${fg_no_bold[white]}%}'

export EDITOR="vim"
alias mutt="mutt -y"
if [[ `uname` == "FreeBSD" ]]; then
	colors="-G"
else
	colors="--color=auto"
fi
alias ls="ls -hF $colors"
export LSCOLORS='ExGxbxexCxfxFxCBCbDxdx'
alias ssh="ssh -A"
if [[ -z "$SSH_AUTH_SOCK" ]]; then
	AGENT_SOCK="/tmp/sshagent"
	eval `ssh-agent -a $AGENT_SOCK`
	ssh-add
fi

preexec() { ODIR="$(pwd)" }          
precmd() { [[ "$(pwd)" != $ODIR ]] && ls }

echo ".zshrc completed successfully."
