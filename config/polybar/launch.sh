#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch
polybar example &
polybar ourbar &
polybar theirbar &
polybar yourbar &

#Hide bar
~/.config/polybar/scripts/hideIt.sh -N "polybar-ourbar_eDP-1" -p 1 -d bottom -H -i 0.3 -w &

~/.config/polybar/scripts/hideIt.sh -N "polybar-theirbar_eDP-1" -p 1 -d bottom -H -i 0.3 -w &

~/.config/polybar/scripts/hideIt.sh -N "polybar-yourbar_eDP-1" -p 1 -d bottom -H -i 0.3 -w &

echo "Bar launched..."
