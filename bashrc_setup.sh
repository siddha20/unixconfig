#!/usr/bin/env bash

set -eo pipefail

add_source() 
{
  # $1 = rc file, $2 = file to source, $3 = comment to place above
  local rc="$1" inc="$2" comment="$3"

  # Create rc if missing
  [[ -f "$rc" ]] || : > "$rc"

  # Only add if the exact source line isn't already present
  if ! grep -Fq "source \"$inc\"" "$rc"; then
    printf '\n%s\nsource "%s"\n' "$comment" "$inc" >> "$rc"
  fi
}

add_source "$HOME/.bashrc" "$HOME/unixconfig/less_setup.sh" '# For less'
add_source "$HOME/.bashrc" "$HOME/unixconfig/hist_setup.sh" '# For history'

source $HOME/.bashrc
