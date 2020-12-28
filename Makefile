COMPILER=pdflatex
PAPER=test

all: clean paper
	echo

paper:
	$(COMPILER) $(PAPER)
	biber $(PAPER)
	$(COMPILER) $(PAPER)
	$(COMPILER) $(PAPER)

clean:
	echo Cleaning temporary files and PDF...
	rm -f *.aux *.dvi *.thm *.lof *.log *.lot *.fls *.out *.toc *.bbl *.blg *.pdf *.cut *.bcf *.run.xml
