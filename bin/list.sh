#!/bin/bash - 
#===============================================================================
#
#          FILE: list_all.sh
# 
#         USAGE: ./list_all.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 06/08/2016 10:59
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

ROBOCUP_ROOT=robocup
ROBOCUP_OUTPUT="robocup_tdps_body.html" 

:> $ROBOCUP_OUTPUT
echo "<p>This is a list of RoboCup 2D Team Description Papers (TDPs) since 2002 and some related papers/technical reports.</p>" >> $ROBOCUP_OUTPUT

for filepath in `find "$ROBOCUP_ROOT" -maxdepth 1 -mindepth 1 -type d | sort -r`; do
  path=`basename "$filepath"`
  echo "  <h2>$path</h2>" >> $ROBOCUP_OUTPUT
  echo "  <ul>" >> $ROBOCUP_OUTPUT
  for i in `find "$filepath" -maxdepth 1 -mindepth 1 -type f | sort`; do
    file=`basename "$i"`
    echo "    <li><a href=\"$filepath/$file\">$file</a></li>" >> $ROBOCUP_OUTPUT
  done
  echo "  </ul>" >> $ROBOCUP_OUTPUT
  echo "  <br />" >> $ROBOCUP_OUTPUT
  echo "  <br />" >> $ROBOCUP_OUTPUT
done

for i in *_body.md; do
    pandoc -f markdown -t html "${i}" > "${i/.md/}.html"
done

tmp="`mktemp`"
cat "contests_body.html" "contests_body_table.html" > "${tmp}"
mv "${tmp}" "contests_body.html"

for i in *_body.html; do
    tmp="`mktemp`"
    cat header.html $i footer.html > ${tmp}
    sed -i 's|href="http|target="_blank" href="http|g' ${tmp}
    mv "${tmp}" "${i/_body/}"
done

