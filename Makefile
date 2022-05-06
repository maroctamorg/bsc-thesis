CC=latexmk
CARGS=-pdf
CTARGET=-jobname=build/thesis
CSOURCE=src/thesis.tex

all: compile present

compile:
	${CC} ${CARGS} -quiet ${CTARGET} ${CSOURCE}
	mv build/thesis.pdf ./ 

verbose:
	${CC} ${CARGS} ${CTARGET} ${CSOURCE}
	mv build/thesis.pdf ./ 

present:
	${PDFVIEWER} thesis.pdf

cleanup:
	rm build/*

