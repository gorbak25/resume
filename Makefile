.phony: all

cv: cv.tex
	pdflatex -shell-escape -interaction nonstopmode -halt-on-error -file-line-error cv.tex
	pdflatex -shell-escape -interaction nonstopmode -halt-on-error -file-line-error cv.tex
	rm paper.log
	
all: cv

clean:
	rm -v *.log *.aux *.out *.pdf *.cls

