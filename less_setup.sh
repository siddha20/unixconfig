#!/usr/bin/env bash

ConfigFile="$HOME/.lesskey"

# add keybindings.
if [ ! -f "$ConfigFile" ]; then
    cat > "$ConfigFile" <<'EOF'
#command
[ left-scroll
] right-scroll
EOF
fi

# display binary characters with dim underline.
export LESSBINFMT='*k*u<%02X>'
export LESSUTFBINFMT='*k*u<U+%04lX>'

# mode begin/end
export LESS_TERMCAP_mb=$'\E[2;37m' # dims
export LESS_TERMCAP_me=$'\E[0m'

# standout begin/end
export LESS_TERMCAP_so=$'\E[1;30;46m' # blue on black
export LESS_TERMCAP_se=$'\e[0m'
export LESS="-R -f --status-column --incsearch"

# disable soft wrapping by default.
alias less="less -S"

# use soft wrapping.
alias lesss="\less"

echo "less keybinds set (in $ConfigFile) and env vars exported for this shell."
