export CLICOLOR=1    
export LSCOLORS=ExFxBxDxCxegedabagacad    
export BASH_SILENCE_DEPRECATION_WARNING=1    

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
    
# TERMINAL PROMPT    
PS1="\e[0;93m\u\e[m"
PS1+=" " # space    
PS1+="\e[0;95m\w\e[m"
PS1+=" " # space    
PS1+="\e[0;36m\$(parse_git_branch)\e[m"
PS1+="$"
PS1+=" " # space    
export PS1; 


alias p=python3
alias k=kubectl
alias d=docker
alias v=vim
alias nv=nvim


httpProxyServer=http://127.0.0.1:9000
httpsProxyServer=http://127.0.0.1:9000

export http_proxy=$httpProxyServer
export https_proxy=$httpsProxyServer
export HTTP_PROXY=$httpProxyServer
export HTTPS_PROXY=$httpsProxyServer
