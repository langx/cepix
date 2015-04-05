#!/usr/bin/env sh

FILES=raw/*.jpg
echo "processing"

mkdir 500
mkdir 300
mkdir 200

for fin in $FILES;
do
  # echo "${f}"
  # convert -quality 1 $f $f.q1.jpg
  # convert -quality 20 $f $f.q2.jpg
  ftemp="${fin/png/jpg}"

  fout="${ftemp/raw/500}"
  echo "$fin -> $fout"
  convert -quality 50 -resize 500x $fin -background "#FFFFFF" -alpha remove $fout
  
  fout="${ftemp/raw/300}"
  echo "$fin -> $fout"
  convert -quality 50 -resize 300x $fin -background "#FFFFFF" -alpha remove $fout

  fout="${ftemp/raw/200}"
  echo "$fin -> $fout"
  convert -quality 50 -resize 200x $fin -background "#FFFFFF" -alpha remove $fout

  # convert -quality 50 -background "#FFFFFF" -fill "#FFFFFF" $f $fout
  # convert -quality 75 $f $f.q4.jpg
  # convert -quality 100 $f $f.q5.jpg
  # convert $f $f.bmp
  # potrace -s $f.bmp
  # mv $f.bmp.svg $f.svg

  # break  
done
