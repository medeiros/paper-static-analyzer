BASENAME=paper-static-analyzer

build: $(BASENAME).tex $(BASENAME).bib IEEEtran.cls IEEEtran.bst
	pdflatex $(BASENAME)
	bibtex $(BASENAME)
	pdflatex $(BASENAME)
	pdflatex $(BASENAME)

.PHONY: clean
clean:
	-rm -f $(BASENAME).aux $(BASENAME).bbl $(BASENAME).blg $(BASENAME).log $(BASENAME).pdf

