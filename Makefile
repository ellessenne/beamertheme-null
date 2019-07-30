.PHONY: ex

ex:
	latexmk default.tex
	latexmk -c
	qpdf --pages default.pdf 1 -- default.pdf default-1.pdf
	qpdf --pages default.pdf 2 -- default.pdf default-2.pdf
	convert -density 300 default-1.pdf default-1.png
	convert -density 300 default-2.pdf default-2.png
	rm default-1.pdf
	rm default-2.pdf
