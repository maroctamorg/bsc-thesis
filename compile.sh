# !/bin/zsh
latexmk -pdf -quiet -jobname=build/thesis thesis.tex;
mv build/thesis.pdf thesis.pdf; 

