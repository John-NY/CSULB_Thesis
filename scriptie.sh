#!/bin/bash

DOCUMENT=thesis_draft
PDF=Donovan_Thesis

latex ${DOCUMENT}.tex
dvips ${DOCUMENT}.dvi
ps2pdf ${DOCUMENT}.ps
mv ${DOCUMENT}.pdf ${PDF}.pdf

git commit -m 'auto upload'
git push -u origin master
evince ${PDF}.pdf
