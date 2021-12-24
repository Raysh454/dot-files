#!/bin/bash

PLAYERCTL_STATUS=$(playerctl --player=$PLAYER status 2>/dev/null)

echo "$PLAYERCTL_STATUS"

if [ "$PLAYERCTL_STATUS" == "" ] 
then
	spotify
else
	i3-msg "[instance="spotify"] focus"
fi
