# !/bin/zsh
latexmk -pdf -quiet -jobname=build/thesis src/thesis.tex;
mv build/thesis.pdf thesis.pdf; 

