#!/bin/bash

DOCUMENT=thesis_draft
PDF=Donovan_Thesis

bibtex ${DOCUMENT}.bib
latex ${DOCUMENT}.tex
dvips ${DOCUMENT}.dvi
ps2pdf ${DOCUMENT}.ps
mv ${DOCUMENT}.pdf ${PDF}.pdf

git add ${DOCUMENT}.tex
git add ${DOCUMENT}.bib
git add scriptie.sh
git commit -m 'auto upload'
git push -u origin master
#evince ${PDF}.pdf
