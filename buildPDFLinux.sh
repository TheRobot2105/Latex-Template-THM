#!/usr/bin/env bash

INPUT=./report.tex
TEMP=./tmp
echo "Hello World"
if [[-d "$TEMP"]];then
    rm -rf "$TEMP"
fi

mkdir "$TEMP"

xelatex -output-directory=$TEMP -shell-escape "$INPUT"
biber --input-directory=$TEMP "$INPUT"
makeglossaries -d $TEMP $INPUT
xelatex -output-directory=$TEMP -shell-escape "$INPUT"
xelatex -output-directory=$TEMP -shell-escape "$INPUT"