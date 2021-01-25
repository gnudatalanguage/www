#!/bin/bash
cd src
wget https://raw.githubusercontent.com/gnudatalanguage/gdl/master/README.md -O index.md
content=`tail -n+7 index.md` # remove first 6 lines
printf "$content" > index.md
