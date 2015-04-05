#!/usr/bin/env sh

FILES=actors/**/**/*.png
echo "processing"

for fin in $FILES;
do
  # echo "${f}"
  # convert -quality 1 $f $f.q1.jpg
  # convert -quality 20 $f $f.q2.jpg
  fout="${fin/png/jpg}"
  echo $fout

  convert -quality 50 $fin -background "#FFFFFF" -alpha remove $fout

  # convert -quality 50 -background "#FFFFFF" -fill "#FFFFFF" $f $fout
  # convert -quality 75 $f $f.q4.jpg
  # convert -quality 100 $f $f.q5.jpg
  # convert $f $f.bmp
  # potrace -s $f.bmp
  # mv $f.bmp.svg $f.svg

  # break  
done
