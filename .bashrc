#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias kill="kill -s KILL"
alias term="kill -s TERM"

alias ls="ls --color=auto --group-directories-first"
alias ll="ls -l"
alias lla="ls -la"

alias vi="vim"

PS1='[\u@\h \W]\$ '
