slides_sections := $(shell grep '\\input' week9_affordable_care_act.tex | grep -v '%.*input' | grep -o 'sections/[A-Za-z0-9_\-]*\.tex')
slides_sections2 := $(shell grep '\\input' week9_ACAconsequences_and_uninsured.tex | grep -v '%.*input' | grep -o 'sections/[A-Za-z0-9_\-]*\.tex')

all: week9_affordable_care_act.pdf week9_ACAconsequences_and_uninsured.pdf

week9_affordable_care_act.pdf: week9_affordable_care_act.tex $(slides_sections)
	pdflatex $<
	pdflatex $<
	pdflatex $<
	rm -f $(addprefix $(basename $<),.log .aux .out .toc)
	rm -f $(addprefix $(basename $<),.snm .nav)
	rm -f $(addprefix $(basename $<),.blg .bbl)

week9_ACAconsequences_and_uninsured.pdf: week9_ACAconsequences_and_uninsured.tex $(slides_sections2)
	pdflatex $<
	pdflatex $<
	pdflatex $<
	rm -f $(addprefix $(basename $<),.log .aux .out .toc)
	rm -f $(addprefix $(basename $<),.snm .nav)
	rm -f $(addprefix $(basename $<),.blg .bbl)

#INPUT RECIPES
input/:
	mkdir $@

../tasks/%: #Generic recipe to produce outputs from upstream tasks
	$(MAKE) -C $(subst output/,code/,$(dir $@)) ../output/$(notdir $@)
