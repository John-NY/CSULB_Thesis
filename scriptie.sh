#!/bin/bash

DOCUMENT=thesis_draft
DOCUMENT1=donovan_story
PDF=Donovan_Thesis
PDF1=Donovan_Story

bibtex ${DOCUMENT}.bib
latex ${DOCUMENT}.tex
dvips ${DOCUMENT}.dvi
ps2pdf ${DOCUMENT}.ps
rm ${DOCUMENT}.dvi ${DOCUMENT}.ps
mv ${DOCUMENT}.pdf ${PDF}.pdf

bibtex ${DOCUMENT1}.bib
latex ${DOCUMENT1}.tex
dvips ${DOCUMENT1}.dvi
ps2pdf ${DOCUMENT1}.ps
rm ${DOCUMENT1}.dvi ${DOCUMENT1}.ps
mv ${DOCUMENT1}.pdf ${PDF1}.pdf

git add *.tex
git add *.bib
git add temperature_control.tex
git add transport_measurements.tex
git add appendices.tex
git add scriptie.sh
git add images
git commit -m 'auto upload'
git push -u origin master
evince ${PDF}.pdf ${PDF1}.pdf
