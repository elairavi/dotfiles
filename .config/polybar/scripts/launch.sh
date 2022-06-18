#!/usr/bin/sh

## Terminate already running bar instances ##
killall -9 polybar

## Launch bar1 and bar2 ##
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar nasa 2>&1 | tee -a /tmp/polybar1.log & disown

## If all your bars have ipc enabled, you can also use ##
# polybar-msg cmd quit
