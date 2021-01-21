#!/bin/bash
cd docs/source
rm -fr gdl.wiki
git clone https://github.com/gnudatalanguage/gdl.wiki
cd gdl.wiki
for fn in `ls *.md`; do
    title=`echo ${fn%%.*} | tr '-' ' ' | sed 's/  */ /g'`
    sed -z -i $fn -e "s/^/# ${title}\n/" 
done