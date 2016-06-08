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

./list_robocup_tdps.sh

for body in *_body.html; do
    target="${body/_body/}"
    tmp=`mktemp`
    cat header.html $body footer.html > $tmp
    mv $tmp $target
done

pandoc -f html -t markdown index_body.html > README.md
