slides_sections := $(shell grep '\\input' week1_intro.tex | grep -v '%.*input' | grep -o 'sections/[A-Za-z0-9_\-]*\.tex')
slides_sections2 := $(shell grep '\\input' week1_introduction_US_healthcare.tex | grep -v '%.*input' | grep -o 'sections/[A-Za-z0-9_\-]*\.tex')

all: week1_intro.pdf week1_introduction_US_healthcare.pdf

week1_intro.pdf: week1_intro.tex $(slides_sections)
	pdflatex $< 
	pdflatex $< 
	pdflatex $< 
	rm $(addprefix $(basename $<),.log .aux .out .toc)
	rm $(addprefix $(basename $<),.snm .nav)
	rm $(addprefix $(basename $<),.blg .bbl)

week1_introduction_US_healthcare.pdf: week1_introduction_US_healthcare.tex $(slides_sections2)
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