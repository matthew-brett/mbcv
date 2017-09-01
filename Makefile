# Makefile for Sphinx documentation

CV = matthew_brett_cv
PUBS = mb_pubs

cv:
	pdflatex $(CV)
	biber --bblsafechars $(CV)
	pdflatex $(CV)
	pdflatex $(CV)

pubs:
	pdflatex $(PUBS).tex
	biber --bblsafechars $(PUBS)
	pdflatex $(PUBS).tex
	pdflatex $(PUBS).tex

pubs-html:
	htlatex mb_pubs.tex

clean:
	git clean -fxd
