.PHONY: thesis.pdf all clean

# All.
all: thesis.pdf

%.tex: %.raw
	@./raw2tex $< > $@

%.tex: %.dat
	@./dat2tex $< > $@

# Thesis.
thesis.pdf: thesis.tex
	@latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make thesis.tex

# Clean.
clean:
	@latexmk -CA
	@$(RM) -r *.bbl
	@$(RM) -r *.xml
	@$(RM) -r *.acn
	@$(RM) -r *.glo
	@$(RM) -r *.ist