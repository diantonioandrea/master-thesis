.PHONY: clean

# Clean.
clean:
	@latexmk -CA
	@$(RM) -r *.bbl
	@$(RM) -r *.xml
	@$(RM) -r *.acn
	@$(RM) -r *.glo
	@$(RM) -r *.ist
	@$(RM) -r *.nav
	@$(RM) -r *.snm
	@$(RM) -r *.synctex*