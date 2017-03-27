
.PHONY: clean

NUMBUILDS=2

default: white_paper.pdf position_paper.pdf

%.pdf:
	for x in `seq $(NUMBUILDS)`; do \
		xelatex $(basename $@).tex; \
	done

clean:
	rm -f *.log *.aux *.pdf rm *.toc *.out
