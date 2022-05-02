CC=latexmk
CARGS=-pdf -quiet
CTARGET=-jobname=build/thesis
CSOURCE=src/thesis.tex

all: compile present

compile:
	${CC} ${CARGS} ${CTARGET} ${CSOURCE}
	mv build/thesis.pdf ./ 

present:
	${PDFVIEWER} thesis.pdf

cleanup:
	rm build/*

