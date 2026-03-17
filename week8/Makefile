slides_sections := $(shell grep '\\input' week8_riskadjustment_and_insurance.tex | grep -v '%.*input' | grep -o 'sections/[A-Za-z0-9_\-]*\.tex')

all: week8_riskadjustment_and_insurance.pdf

week8_riskadjustment_and_insurance.pdf: week8_riskadjustment_and_insurance.tex $(slides_sections)
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