#!/bin/sh
  xrandr --output DVI-D-0 --mode 1920x1080 --rotate `cat ~/.screenlayout/.rotate` --output HDMI-0 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output DP-0 --off --output DP-1 --off --output DP-2 --off --output DP-3 --off --output DP-4 --off --output DP-5 --off

