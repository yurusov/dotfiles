#!/bin/sh
CURRENT=`cut -d " " -f 1 ~/.screenlayout/.rotate`
if [ $CURRENT = 'normal' ]
then
  echo "left --pos 2560x0" > ~/.screenlayout/.rotate
else
  echo "normal --pos 2560x360" > ~/.screenlayout/.rotate
fi
sh ~/.screenlayout/default.sh
wal -R

