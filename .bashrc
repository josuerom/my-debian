# ~/.bashrc
case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# ---------------------------------------------------------------------------

# Mis alias
alias c='clear'
alias e='exit'
alias v='vim'
alias ..='cd ..'
alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
alias la='ls -A --color=auto'
alias cp='cp -r'
alias scp='sudo cp -r'
alias mk='touch'
alias smk='sudo touch'
alias del='rm -rf'
alias sdel='sudo rm -rf'
alias smv='sudo mv'
alias cdh='cd ~'
alias cdw='cd ~/Workspace'
alias cbash='vim ~/.bashrc'
alias cdcf='cd ~/Workspace/codeforces/src/900'
alias concf='cd ~/Workspace/contest/CF/'
alias conrpc='cd ~/Workspace/contest/RPC/'
alias update='sudo apt update -y && sudo apt upgrade -y'
alias install="sudo apt install"
alias delete="remove"
alias rest='sudo reboot'
alias shut='sudo halt -p'
alias neo="clear && neofetch"
alias modh="clear && cmatrix"
alias autorpc='python3 ~/Workspace/contest/AUTO/generate_contest_rpc_linux.py'
alias autocf='python3 ~/Workspace/contest/AUTO/generate_contest_cf_linux.py'
alias temcpp='copy_template() { cp -r ~/Workspace/contest/TEMPLATES/template.cpp $1.cpp && nvim $1.cpp; }; copy_template'
alias temjava='copy_template() { cp -r ~/Workspace/contest/TEMPLATES/template.java $1.java && nvim $1.java; }; copy_template'
alias tempy='copy_template() { cp -r ~/Workspace/contest/TEMPLATES/template.py $1.py && nvim $1.py; }; copy_template'
alias runpy='run() { python3 $1; }; run'
alias runjava='run() { java $1; }; run'
alias runcpp='compile_and_run() { g++ -std=c++17 -O2 -DLOCAL $1 -o ~/Workspace/bin/exe && ~/Workspace/bin/exe; }; compile_and_run'
alias pass='cat ~/.config/token | xclip -selection clipboar'

# Git alias
alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gc.='git commit -m "Update files"'
alias gpl='git pull'
alias gp='git push'
alias gcl='git clone'
alias gb='git branch'
alias gbm='git branch -M main'
alias grao='git remote add origin'
alias gpuo='git push -u origin'

# Funciones incorporadas
remove() {
    sudo apt remove "$1" --purge
}
