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

for i in *_body.md; do
    pandoc -f markdown -t html "${i}" > "${i/.md/}.html"
done

./list_robocup_tdps.sh

for i in *_body.html; do
    tmp="`mktemp`"
    cat header.html $i footer.html > ${tmp}
    sed -i 's|href="http|target="_blank" href="http|g' ${tmp}
    mv "${tmp}" "${i/_body/}"
done

