#!/bin/env bash

if [ -n "$CI" ] || [ -n "$GITHUB_RUN_ID" ]; then
  sudo rm -rf /usr/share/fonts/woff/opendyslexic
fi
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
