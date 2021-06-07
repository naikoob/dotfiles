#!/usr/bin/env bash

img="/tmp/screen-lock.$RANDOM.png"

# Take a screenshot
scrot $img

# blur it...
convert -blur 0x8 $img $img

# now lock with i3lock
i3lock -i $img

# cleanup
rm $img

