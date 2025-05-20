CLEAN_FILES = *.aux *.log *.out *.pdf *.toc *.xml *.bbl\
			  *.blg *.dvi *.ps *.snm *.nav *.vrb *.fdb_latexmk\
			  *.fls *.synctex.gz *.bcf *.run.xml *.lof *.lot *.gz\
			  *.bak *.backup *.swp *.pdf *.xdv
THESIS_NAME = "thesis"

.PHONY: all thesis clean

all: thesis
	@echo "All targets have been build"

thesis:
	@echo "Building Thesis Latex"
	@cd latex && latexmk -interaction=nonstopmode -halt-on-error -jobname=$(THESIS_NAME) main.tex

clean:
	@rm -f $(CLEAN_FILES)
	@cd latex && rm -f $(CLEAN_FILES)
