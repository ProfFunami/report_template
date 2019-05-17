################################################################################
# Makefile for MacOS 10.9                                                      #
################################################################################

TEX = platex
BIBTEX = pbibtex
DVIPDF = dvipdfmx
PREVIEW = open -a preview

BIB = main.bib
SRC = main.tex
MAIN= $(SRC:.tex=)
DVI = $(SRC:.tex=.dvi)
PDF = $(SRC:.tex=.pdf)

all: runpdf

dvi:
	$(TEX) $(MAIN)
	# $(BIBTEX) $(MAIN)
	# $(TEX) $(MAIN)
	$(TEX) $(MAIN)

pdf: dvi
	$(DVIPDF) -p a4 $(DVI)

runpdf: pdf
	$(PREVIEW) $(PDF)

clean:
	rm -f *.bbl *.blg *.aux *.log *.dvi
