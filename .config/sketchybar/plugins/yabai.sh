#!/bin/bash

windows_on_spaces () {
  CURRENT_SPACES="$(yabai -m query --displays | jq -r '.[].spaces | @sh')"

  args=(--set spaces_bracket drawing=off
        --set '/space\..*/' background.drawing=on
        --animate sin 10)

  while read -r line
  do
    for space in $line
    do
      ICON_PADDING=8
      LABEL_PADDING=0
      icon_strip=" "
      apps=$(yabai -m query --windows --space $space | jq -r ".[].app")
      if [ "$apps" != "" ]; then
        ICON_PADDING=0
        LABEL_PADDING=14
        while IFS= read -r app; do
          icon_strip+=" $($CONFIG_DIR/plugins/icon_map.sh "$app")"
        done <<< "$apps"
      fi
      args+=(--set space.$space label="$icon_strip" label.drawing=on label.padding_right=$LABEL_PADDING icon.padding_right=$ICON_PADDING)
    done
  done <<< "$CURRENT_SPACES"

  sketchybar -m "${args[@]}"
}

mouse_clicked() {
  yabai -m window --toggle float
  window_state
}

case "$SENDER" in
  "mouse.clicked") mouse_clicked
  ;;
  "forced") exit 0
  ;;
  "windows_on_spaces" | "space_change") windows_on_spaces
  ;;
esac
