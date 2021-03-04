#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls="ls --color=auto"
alias ll="ls -l"
alias lla="ls -la"

alias vi="vim"

PS1='[\u@\h \W]\$ '
