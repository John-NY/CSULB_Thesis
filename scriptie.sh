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
git add temperature_control.tex
git add transport_measurements.tex
git add appendices.tex
git add scriptie.sh
git add images
git commit -m 'auto upload'
git push -u origin master
#evince ${PDF}.pdf
