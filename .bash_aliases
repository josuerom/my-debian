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
alias pytest='python3 ~/Workspace/contest/AUTO/solution_tester_linux.py -test'
alias pyparse='python3 ~/Workspace/contest/AUTO/solution_tester_windows.py -parse'
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
