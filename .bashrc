#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls="ls --color=auto"
alias ll="ls -al"

alias vi="vim"

PS1='[\u@\h \W]\$ '
