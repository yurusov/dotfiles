#!/bin/bash
dir=backup
i=0
while [ -d $dir$i ]; do
  i=$((i+1))
done
mkdir $dir$i
mkdir $dir$i/.config
mkdir -p $dir$i/.local/share/applications
mkdir $dir$i/.local/bin

for f in $(find .* \( -prune ! -name ".local" ! -name ".config" ! -name ".git*" ! -name "." ! -name ".." \) && find .config/* -prune ! -name "pulse" && find .local -type f); do
  cp -a ~/$f $dir$i/$f
  rm -rf ~/$f
  ln -s $(dirname $(realpath $0))/$f ~/$f
done
exit 0
