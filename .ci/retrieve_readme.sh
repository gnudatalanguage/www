#!/bin/bash
cd src
wget https://raw.githubusercontent.com/gnudatalanguage/gdl/master/README.md -O index.md
content=`tail -n+6 index.md` # remove first 5 lines
printf "$content" > index.md
