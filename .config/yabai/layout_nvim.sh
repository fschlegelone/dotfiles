#!/bin/bash

# Open kitty windows
kitty &
kitty &
kitty &
sleep 2 # wait for Kitty windows to open

# Get the window IDs of the three Kitty windows
windows=$(yabai -m query --windows)

# Assign the first window to the left side (70% width)
left_window=$(echo "$windows" | head -n 1)
yabai -m window "$left_window" --resize abs:70:100:0:0

# Assign the remaining two windows to the right side (30% width each)
right_windows=$(echo "$windows" | tail -n 2)
yabai -m window "$right_windows" --resize abs:30:50:70:0
