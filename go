#!/bin/bash

function _go() {
  cur="${COMP_WORDS[COMP_CWORD]}"
  if [[ ${COMP_WORDS[COMP_CWORD-1]} == "go" ]]
  then
    comms="build clean doc env fix fmt get install list run test tool version vet"
    COMPREPLY=($(compgen -W "${comms}" -- ${cur}))
  fi
  return 0
}

complete -F _go go
