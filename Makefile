.PHONY: clean

default: white_paper.pdf position_paper.pdf

%.pdf:
	xelatex $(basename $@).tex

clean:
	rm -f *.log *.aux *.pdf rm *.toc
