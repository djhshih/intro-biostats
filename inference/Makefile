base = inference

all: $(base).pdf
	

$(base).tex: $(base).Rnw
	R CMD Sweave $^

$(base).pdf: $(base).tex
	pdflatex $^

clean:
	rm -f *.pdf *.tex *.aux *.log *.nav *.snm *.toc *.out
