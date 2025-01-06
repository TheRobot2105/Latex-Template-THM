#!/usr/bin/env bash

INPUT=report
OUTPUTDIR=./output/
OUTPUT=Testname
echo "Hello World"
git clean -Xf

xelatex  -shell-escape $INPUT.tex
biber  $INPUT
makeglossaries -d $TEMP $INPUT
xelatex  -shell-escape $INPUT.tex
xelatex  -shell-escape $INPUT.tex
mkdir -p $OUTPUTDIR
mv $INPUT.pdf $OUTPUTDIR/$OUTPUT.pdf