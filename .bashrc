# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#============================== ALIASES =================================
alias ls='ls --color'
alias ll='ls -lhF --color'
alias la='ls -lhFa --color'
alias iowait='sar -P ALL 1 0'
alias pager='pager -R'
alias less='less -R'

#=============================== HACKS ==================================
alias skype="PULSE_LATENCY_MSEC=30 skype"

#=========================== TRANSPARENCY ===============================
transset -a .95 > /dev/null

#============================== PROMPT ==================================
export PS1="\[\e[0;36m\]\u\[\e[0m\]@\[\e[0;36m\]\h\[\e[0m\]:\[\e[0;32m\]\w\[\e[0m\]$ "

export PATH=$PATH:/home/newbiz/local/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/newbiz/local/lib
