CC=latexmk
CARGS=-pdf
CTARGET=-jobname=build/thesis
CSOURCE=src/thesis.tex

all: compile present

compile:
	${CC} ${CARGS} -quiet ${CTARGET} ${CSOURCE}
	mv build/thesis.pdf ./ 

verbose:
	${CC} ${CARGS} ${CTARGET}/thesis/thesis ${CSOURCE}
	mv build/thesis/thesis.pdf ./ 

present:
	${PDFVIEWER} thesis.pdf

present_abstract:
	${PDFVIEWER} abstract.pdf

cleanup:
	rm build/*

