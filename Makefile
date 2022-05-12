file = $(basename $(wildcard *.tex))
all:
	latexmk -xelatex -synctex=1 -shell-escape ${file}.tex 
	latexmk -c 
	rm -f ${file}.run* ${file}.bbl ${file}.xdv ${file}.synctex*	
	rm -f ./*/*.aux
