#!/usr/bin/env bash

set -e

sync_history()
{
    builtin history -a
    builtin history -n
}

if [[ -n "$PROMPT_COMMAND" ]]; then
    PROMPT_COMMAND="sync_history; $PROMPT_COMMAND"
else
    export PROMPT_COMMAND="sync_history"
fi
