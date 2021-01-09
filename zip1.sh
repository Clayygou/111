#!/bin/sh
# 解压zip到zip名的目录 
TARDIR="/home/mzy/image/train"
for tar in $(ls n*.tar)
do
  dirname=echo $tar | sed 's/\.tar$//'
  printf "Directory name to extract this file is: %s.\n" $dirname
  mkdir -p "$TARDIR/$dirname"
  tar -xvf $tar -C $TARDIR/$dirname 
  printf "\n\n"
  rm $tar
done
