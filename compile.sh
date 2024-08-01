#!/bin/env bash

lualatex --interaction=nonstopmode hm.tex
bibtex hm
makeindex hm
lualatex --interaction=nonstopmode hm.tex
lualatex --interaction=nonstopmode hm.tex
lwarpmk limages
lwarpmk html
bibtex hm_html
lwarpmk printindex
lwarpmk html1
