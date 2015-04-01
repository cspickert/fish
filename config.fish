#!/usr/bin/env fish

# Path
set -x PATH /usr/local/arcanist/bin /usr/local/bin /usr/local/sbin /usr/bin /usr/sbin /bin /sbin /opt/X11/bin

set -x TERM 'xterm-256color'

# Enable color in grep
set -x GREP_OPTIONS '--color=auto'
set -x GREP_COLOR '3;33'

set -x LESS '--ignore-case --raw-control-chars'
set -x PAGER 'less'
set -x EDITOR 'emacs'

set -x LANG 'en_US.UTF-8'
set -x LC_CTYPE 'en_US.UTF-8'
set -x LC_MESSAGES 'en_US.UTF-8'
set -x LC_COLLATE C

# Python
if [ -f ~/.config/pythonstartup.py ]
   set -x PYTHONSTARTUP ~/.config/pythonstartup.py
end

# Aliases
alias l ll
