#!/bin/env bash

pdflatex --interaction=nonstopmode hm.tex
pdflatex --interaction=nonstopmode hm.tex
bibtex hm
pdflatex --interaction=nonstopmode hm.tex
lwarpmk html
lwarpmk limages
bibtex hm_html
lwarpmk html
