.PHONY: clean

default: white_paper.pdf position_paper.pdf

%.out:
	xelatex $(basename $@).tex

%.pdf: %.out
	 pdflatex $(basename $@).tex

clean:
	rm -f *.log *.aux *.pdf rm *.toc
