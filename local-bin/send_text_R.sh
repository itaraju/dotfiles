#!/usr/bin/env bash

# input is selection or document
rawText="`cat`"

curDir=''
if [[ ${#1} -gt 0 ]]; then
    curDir="$1"
fi

osascript -e 'on run(theCode)' \
    -e 'tell application "R" to activate' \
    -e 'tell application "R" to cmd (item 1 of theCode)' \
    -e 'end run' -- "$rawText" "$curDir"
