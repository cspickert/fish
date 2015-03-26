#!/usr/bin/env fish

# Editor
set -x EDITOR (which emacs)

# Path
for d in /usr/local/arcanist/bin /usr/local/sbin
    [ -d "$d" ]; and set -x PATH "$d" $PATH
end

# Python
if [ -f ~/.config/pythonstartup.py ]
   set -x PYTHONSTARTUP ~/.config/pythonstartup.py
end

# Aliases
alias l ll
