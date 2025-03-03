.PHONY: clean

# Clean.
clean:
	@latexmk -CA
	@$(RM) -r *.bb*
	@$(RM) -r *.xml
	@$(RM) -r *.acn
	@$(RM) -r *.glo
	@$(RM) -r *.ist
	@$(RM) -r *.nav
	@$(RM) -r *.snm
	@$(RM) -r *.synctex*
	@$(RM) -r *.auxlock

	@$(RM) -r content/tikz/*.pdf
	@$(RM) -r content/tikz/*.xml
	@$(RM) -r content/tikz/*.dpth
	@$(RM) -r content/tikz/*.log
	@$(RM) -r content/tikz/*.md5