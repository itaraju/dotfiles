#! /usr/bin/sh
## change font size (1st argument) on urxvt termninal
printf '\e]710;%s\007' "xft:DejaVu Sans Mono:pixelsize=$1:antialias=true:hinting=true"
