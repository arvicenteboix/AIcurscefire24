#!/bin/bash
pandoc M4.md -o M4.pdf --pdf-engine=xelatex --from markdown+implicit_figures --template eisvogel --listings --filter pandoc-latex-environment --number-sections --toc
pandoc M4_es.md -o M4_es.pdf --pdf-engine=xelatex --from markdown+implicit_figures --template eisvogel --listings --filter pandoc-latex-environment --number-sections --toc
