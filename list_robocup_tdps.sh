#!/bin/bash

ROOT=robocup
OUTPUT="robocup_tdps_body.html" 

rm -f $OUTPUT
touch $OUTPUT

echo "<p>This is a list of Team Description Papers (TDPs) from annual RoboCup 2D competitions since 2002.</p>" >> $OUTPUT
i=0
for filepath in `find "$ROOT" -maxdepth 1 -mindepth 1 -type d | sort -r`; do
  path=`basename "$filepath"`
  echo "  <H2>$path</H2>" >> $OUTPUT
  echo "  <UL>" >> $OUTPUT
  for i in `find "$filepath" -maxdepth 1 -mindepth 1 -type f | sort`; do
    file=`basename "$i"`
    echo "    <LI><a href=\"$filepath/$file\">$file</a></LI>" >> $OUTPUT
  done
  echo "  </UL>" >> $OUTPUT
  echo "  <br>" >> $OUTPUT
  echo "  <br>" >> $OUTPUT
done

