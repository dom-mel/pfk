FILE = main

all: clean
	pdflatex --shell-escape $(FILE).tex
	bibtex $(FILE).aux
	pdflatex --shell-escape $(FILE).tex




main.aux:
	pdflatex --shell-escape $(FILE).tex

clean:
	-rm -f *.log *.aux *.dvi *.bbl *.blg *.ilg *.toc *.lof *.lot *.idx *.ind *.ps  *~ *.pdf *.lol *.out *.run.xml *blx.bib
