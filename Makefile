# Makefile for Sphinx documentation

CV = matthew_brett_cv

cv:
	pdflatex $(CV)
	biber --bblsafechars $(CV)
	pdflatex $(CV)
	pdflatex $(CV)


clean:
	git clean -fxd
