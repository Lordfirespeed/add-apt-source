#!/bin/bash

function Maybe_Sudo {
  if [ "$EUID" -eq 0 ]; then
    "$@"
    return
  fi

  sudo "$@"
  return
}
export -f Maybe_Sudo
