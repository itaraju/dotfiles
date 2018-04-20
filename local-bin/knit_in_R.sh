#!/usr/bin/env bash

# 1st parameter ($1) will be sent to knitr for rendering, in a R.app session
osascript -e 'on run(theCode)' \
          -e 'tell application "R" to activate' \
          -e 'tell application "R" to cmd "a<-NA"' \
          -e 'tell application "R" to cmd "a<-rmarkdown::render('\'$1\'')"' \
          -e 'tell application "R" to cmd "if (!is.na(a)){system2(\"open\", a)}"' \
          -e 'end run' --
