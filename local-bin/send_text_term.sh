#!/usr/bin/env bash

# input is selection or document
rawText="$(cat | sed 's/ / /g;') $1"

osascript  -e 'on run(theCode)' \
           -e '  tell application "Terminal"' \
           -e '    do script theCode in window 1' \
           -e '  end tell' \
           -e 'end run' -- "$rawText"
