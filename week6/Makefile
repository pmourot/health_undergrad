slides_sections := $(shell grep '\\input' week6_adverse_selectionI.tex | grep -v '%.*input' | grep -o 'sections/[A-Za-z0-9_\-]*\.tex')
slides_sections2 := $(shell grep '\\input' week6_adverse_selection_empirical.tex | grep -v '%.*input' | grep -o 'sections/[A-Za-z0-9_\-]*\.tex')

all: week6_adverse_selectionI.pdf week6_adverse_selection_empirical.pdf

week6_adverse_selectionI.pdf: week6_adverse_selectionI.tex $(slides_sections)
	pdflatex $< 
	pdflatex $< 
	pdflatex $< 
	rm $(addprefix $(basename $<),.log .aux .out .toc)
	rm $(addprefix $(basename $<),.snm .nav)
	rm $(addprefix $(basename $<),.blg .bbl)

week6_adverse_selection_empirical.pdf: week6_adverse_selection_empirical.tex $(slides_sections2)
	pdflatex $< 
	pdflatex $< 
	pdflatex $< 
	rm $(addprefix $(basename $<),.log .aux .out .toc)
	rm $(addprefix $(basename $<),.snm .nav)
	rm $(addprefix $(basename $<),.blg .bbl)

#INPUT RECIPES
input/:
	mkdir $@

../tasks/%: #Generic recipe to produce outputs from upstream tasks
	$(MAKE) -C $(subst output/,code/,$(dir $@)) ../output/$(notdir $@)