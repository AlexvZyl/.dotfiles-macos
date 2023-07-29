#!/bin/bash

POPUP_OFF='sketchybar --set apple.logo popup.drawing=off'
POPUP_CLICK_SCRIPT='sketchybar --set $NAME popup.drawing=toggle'

apple_logo=(
  icon=$APPLE
  icon.font="$FONT:Black:15.0"
  icon.color=$CYAN
  icon.y_offset=1
  padding_right=10
  padding_left=0
  label.drawing=off
  click_script="$POPUP_CLICK_SCRIPT"
)

sketchybar --add item apple.logo left                  \
           --set apple.logo "${apple_logo[@]}"         \
