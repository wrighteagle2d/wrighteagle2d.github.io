#!/bin/bash

ROOT=robocup
OUTPUT="robocup_tdps_body.html" 

rm -f $OUTPUT
touch $OUTPUT

echo "<p>This is a list of RoboCup 2D Team Description Papers (TDPs) since 2002 and some related papers/technical reports.</p>" >> $OUTPUT
i=0
for filepath in `find "$ROOT" -maxdepth 1 -mindepth 1 -type d | sort -r`; do
  path=`basename "$filepath"`
  echo "  <h2>$path</h2>" >> $OUTPUT
  echo "  <ul>" >> $OUTPUT
  for i in `find "$filepath" -maxdepth 1 -mindepth 1 -type f | sort`; do
    file=`basename "$i"`
    echo "    <li><a href=\"$filepath/$file\">$file</a></li>" >> $OUTPUT
  done
  echo "  </ul>" >> $OUTPUT
  echo "  <br />" >> $OUTPUT
  echo "  <br />" >> $OUTPUT
done

