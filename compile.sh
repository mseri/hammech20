#!/bin/env bash

lualatex --interaction=nonstopmode hm.tex
lualatex --interaction=nonstopmode hm.tex
bibtex hm
lualatex --interaction=nonstopmode hm.tex
lwarpmk html
lwarpmk limages
bibtex hm_html
lwarpmk html
