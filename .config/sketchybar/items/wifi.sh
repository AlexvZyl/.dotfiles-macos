#!/bin/bash

source "$CONFIG_DIR/icons.sh"

wifi=(
  label.width=0
  icon.font="$FONT:Regular:13.0"
  icon="$WIFI_DISCONNECTED"
  label.padding_left=7
  script="$PLUGIN_DIR/wifi.sh"
)

sketchybar --add item wifi right \
           --set wifi "${wifi[@]}" \
           --subscribe wifi wifi_change mouse.clicked
