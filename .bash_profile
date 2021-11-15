export CLICOLOR=1    
export LSCOLORS=ExFxBxDxCxegedabagacad    
export BASH_SILENCE_DEPRECATION_WARNING=1    
    
# TERMINAL PROMPT    
PS1="\[\e[0;93m\]\u\[\e[m\]"    # username    
PS1+=" " #space    
PS1+="\[\e[0;95m\]\W\[\e[m\]"    # current directory    
PS1+=" " # space    
PS1+="$ " # end prompt    
export PS1; 


alias p=python3
alias k=kubectl
alias d=docker
alias v=vim
alias nv=nvim
