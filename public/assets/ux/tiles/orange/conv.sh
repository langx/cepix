#!/bin/bash
# set -x

SOURCE_RES=raw
TARGET_RES_LIST=( 256 200 128 100 )
FILES=$SOURCE_RES/*png

for TARGET_RES in "${TARGET_RES_LIST[@]}"
do
  mkdir -p $TARGET_RES
  for FILE_IN in $FILES
  do
    # echo "Processing ${FILE_IN} file..."

    # base=`basename ${FN} .png`
    FILE_OUT="${FILE_IN/$SOURCE_RES/$TARGET_RES}"

    ## scale on both axes
    # CMD="convert $FILE_IN -resize ${TARGET_RES}x${TARGET_RES} $FILE_OUT"

    # just scale on height
    CMD="convert $FILE_IN -resize x${TARGET_RES} $FILE_OUT"
    echo $CMD
    $CMD

  done
done