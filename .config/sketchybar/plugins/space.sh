#!/bin/bash

update() {
  source "$CONFIG_DIR/colors.sh"
  COLOR=$BLACK
  if [ "$SELECTED" = "true" ]; then
    COLOR=$GREY3
  fi
  sketchybar --set $NAME icon.highlight=$SELECTED \
                         label.highlight=$SELECTED \
                         background.border_color=$COLOR
}

mouse_clicked() {
    yabai -m space --focus $SID 2>/dev/null
}

case "$SENDER" in
  "mouse.clicked") mouse_clicked
  ;;
  *) update
  ;;
esac
