all: example.pdf

example.pdf: example.tex
	latexmk -pdf -pdflatex="xelatex -interaction=nonstopmode" -use-make $<

clean:
	latexmk -CA
	rm *.xml
