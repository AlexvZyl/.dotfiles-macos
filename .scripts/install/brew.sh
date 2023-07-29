#!/bin/bash

# wm
brew install yabai skhd
yabai --start-service
skhd --start-service

# bar
brew tap FelixKratz/formulae
brew install sketchybar
brew services start sketchybar

# misc
brew install du-dust
