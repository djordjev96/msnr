#!/bin/bash

clear

echo " -- LaTeX Compilation Errors --"
echo ""


ARGUMENT="$1"
#determine aux name by stripping .tex suffix and adding .aux
AUXNAME="${ARGUMENT%.tex}.aux"
PDFNAME="${ARGUMENT%.tex}.pdf"
pdflatex -shell-escape -interaction=nonstopmode -file-line-error "$ARGUMENT" | grep -i ".*:[0-9]*:.*\|warning" > /dev/null 2>&1
bibtex $AUXNAME  
pdflatex -shell-escape -interaction=nonstopmode -file-line-error "$ARGUMENT" | grep -i ".*:[0-9]*:.*\|warning" > /dev/null 2>&1
pdflatex -shell-escape -interaction=nonstopmode -file-line-error "$ARGUMENT" | grep -i ".*:[0-9]*:.*\|warning" 
