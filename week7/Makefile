slides_sections := $(shell grep '\\input' week7_adverse_selectionII.tex | grep -v '%.*input' | grep -o 'sections/[A-Za-z0-9_\-]*\.tex')

all: week7_adverse_selectionII.pdf

week7_adverse_selectionII.pdf: week7_adverse_selectionII.tex $(slides_sections)
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