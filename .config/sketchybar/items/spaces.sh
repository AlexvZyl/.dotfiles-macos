#!/bin/bash

SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10")

# Destroy space on right click, focus space on left click.

sid=0
spaces=()
for i in "${!SPACE_ICONS[@]}"
do
  sid=$(($i+1))

  space=(
    associated_space=$sid
    icon="${SPACE_ICONS[i]}"
    icon.padding_left=8
    icon.padding_right=8
    padding_left=2
    padding_right=2
    label.padding_right=0
    label.padding_left=0
    icon.highlight_color=$YELLOW
    icon.color=$WHITE
    label.color=$WHITE
    label.highlight_color=$YELLOW
    label.font="sketchybar-app-font:Regular:12.0"
    label.y_offset=-1
    background.color=$GREY0
    background.border_color=$BLACK
    background.drawing=on
    label.drawing=on
    script="$PLUGIN_DIR/space.sh"
  )

  sketchybar --add space space.$sid left    \
             --set space.$sid "${space[@]}" \
             --subscribe space.$sid mouse.clicked
done
