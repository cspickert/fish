#!/usr/bin/env fish

# Path
set -x PATH /usr/local/arcanist/bin /usr/local/bin /usr/local/sbin /usr/bin /usr/sbin /bin /sbin /opt/X11/bin

set -x TERM 'xterm-256color'

# Enable color in grep
set -x GREP_OPTIONS '--color=auto'
set -x GREP_COLOR '3;33'

# Editor/pager
set -x EDITOR 'emacs'
set -x PAGER 'less'

# Language
set -x LANG 'en_US.UTF-8'
set -x LANGUAGE $LANG
set -x LC_ALL $LANG
set -x LC_CTYPE $LANG
set -x LC_MESSAGES $LANG
set -x LC_COLLATE C

# Python
if [ -f ~/.config/pythonstartup.py ]
   set -x PYTHONSTARTUP ~/.config/pythonstartup.py
end

# Aliases
alias l ll

# direnv
if which -s direnv
   eval (direnv hook fish)
end

# nix
eval (~/.config/fish/misc/nix_fish_env.sh) 2>/dev/null
