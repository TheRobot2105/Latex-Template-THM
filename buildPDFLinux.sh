#!/usr/bin/env bash

INPUT=report
OUTPUT=./output/
echo "Hello World"

xelatex  -shell-escape $INPUT.tex
biber  $INPUT
makeglossaries -d $TEMP $INPUT
xelatex  -shell-escape $INPUT.tex
xelatex  -shell-escape $INPUT.tex
mv $INPUT.pdf $OUTPUT