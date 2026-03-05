slides_sections := $(shell grep '\\input' week4_moral_hazard.tex | grep -v '%.*input' | grep -o 'sections/[A-Za-z0-9_\-]*\.tex')
slides_sectionsII := $(shell grep '\\input' week4_moral_hazardII.tex | grep -v '%.*input' | grep -o 'sections/[A-Za-z0-9_\-]*\.tex')

all: week4_moral_hazard.pdf week4_moral_hazardII.pdf

week4_moral_hazard.pdf: week4_moral_hazard.tex $(slides_sections)
	pdflatex $< 
	pdflatex $< 
	pdflatex $< 
	rm $(addprefix $(basename $<),.log .aux .out .toc)
	rm $(addprefix $(basename $<),.snm .nav)
	rm $(addprefix $(basename $<),.blg .bbl)

week4_moral_hazardII.pdf: week4_moral_hazardII.tex $(slides_sectionsII)
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