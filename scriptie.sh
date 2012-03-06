#!/bin/bash

DOCUMENT=thesis_draft

latex ${DOCUMENT}.tex
dvips ${DOCUMENT}.dvi
ps2pdf ${DOCUMENT}.ps
mv ${DOCUMENT}.pdf Donovan_Thesis.pdf

