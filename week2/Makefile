slides_sections := $(shell grep '\\input' week2_US_insurance_history.tex | grep -v '%.*input' | grep -o 'sections/[A-Za-z0-9_\-]*\.tex')
slides_sections2 := $(shell grep '\\input' week2_demand_health.tex | grep -v '%.*input' | grep -o 'sections/[A-Za-z0-9_\-]*\.tex')

all: week2_US_insurance_history.pdf week2_demand_health.pdf

week2_US_insurance_history.pdf: week2_US_insurance_history.tex $(slides_sections)
	pdflatex $< 
	pdflatex $< 
	pdflatex $< 
	rm $(addprefix $(basename $<),.log .aux .out .toc)
	rm $(addprefix $(basename $<),.snm .nav)
	rm $(addprefix $(basename $<),.blg .bbl)

week2_demand_health.pdf: week2_demand_health.tex $(slides_sections2)
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