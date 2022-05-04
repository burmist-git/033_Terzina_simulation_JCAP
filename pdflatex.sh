#!/bin/bash

function printHelp {
    echo " --> ERROR in input arguments "
    echo " [0] -d  : compile with pdflatex"
    echo " [0] -c  : cean"
    echo " [0] -i  : install needed packages"
    echo " [0] -h  : print help"
}

if [ $# -eq 0 ] 
then    
    printHelp
else
    if [ "$1" = "-d" ]; then
	pdflatex terzinasim.tex
	pdflatex terzinasim.tex
    elif [ "$1" = "-c" ]; then
	rm -rf *.*~ terzinasim.aux terzinasim.log  terzinasim.out terzinasim.toc 
    elif [ "$1" = "-i" ]; then
	sudo apt install -y texlive-latex-base texlive-latex-extra
    elif [ "$1" = "-h" ]; then
        printHelp
    else
        printHelp
    fi
fi

#espeak "I have done"
