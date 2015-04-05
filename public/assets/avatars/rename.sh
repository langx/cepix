#!/usr/bin/bash

shopt -s nullglob

count=0
for i in faces/*; do
    echo $i
    mv -nv -- "$i" "./faces/face$((++count)).png"
done