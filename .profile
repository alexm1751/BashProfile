source ~/.git-prompt.sh

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
	if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
		color_prompt=yes
	else
		color_prompt=
	fi	
fi

GREEN="\[\033[01;32m\]"
RED="\[\033[01;31m\]"
CYAN="\[\033[01;36m\]"
RESET="\[\033[00m\]"

if [ "$color_prompt" = yes ]; then
	PS1="${GREEN}\u@\h${RESET}:${CYAN}\w${RED}\$(__git_ps1)${RESET}\$ "
else
	PS1='${debian_chroot:+($debian_chroot)}\u@h:\w\$ '
fi
unset color_prompt force_color_prompt