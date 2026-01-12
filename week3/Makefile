slides_sections := $(shell grep '\\input' week3_demand_insurance.tex | grep -v '%.*input' | grep -o 'sections/[A-Za-z0-9_\-]*\.tex')
slides_sections2 := $(shell grep '\\input' week3_understanding_healthinsurance_plans.tex | grep -v '%.*input' | grep -o 'sections/[A-Za-z0-9_\-]*\.tex')

all: week3_demand_insurance.pdf week3_understanding_healthinsurance_plans.pdf \
	 problem_set2.pdf problem_set2_solutions.pdf exercise_class_solutions.pdf

week3_demand_insurance.pdf: week3_demand_insurance.tex $(slides_sections)
	pdflatex $< 
	pdflatex $< 
	pdflatex $< 
	rm $(addprefix $(basename $<),.log .aux .out .toc)
	rm $(addprefix $(basename $<),.snm .nav)
	rm $(addprefix $(basename $<),.blg .bbl)

week3_understanding_healthinsurance_plans.pdf: week3_understanding_healthinsurance_plans.tex $(slides_sections2)
	pdflatex $< 
	pdflatex $< 
	pdflatex $< 
	rm $(addprefix $(basename $<),.log .aux .out .toc)
	rm $(addprefix $(basename $<),.snm .nav)
	rm $(addprefix $(basename $<),.blg .bbl)

exercise_class_solutions.pdf: exercise_class_solutions.tex
	pdflatex $< 
	pdflatex $< 
	pdflatex $< 
	rm $(addprefix $(basename $<),.log .aux .out .toc)
	rm $(addprefix $(basename $<),.snm .nav)
	rm $(addprefix $(basename $<),.blg .bbl)

problem_set2.pdf: problem_set2.tex
	pdflatex $< 
	pdflatex $< 
	pdflatex $< 
	rm $(addprefix $(basename $<),.log .aux .out .toc)
	rm $(addprefix $(basename $<),.snm .nav)
	rm $(addprefix $(basename $<),.blg .bbl)

problem_set2_solutions.tex: problem_set2.tex
	cat $< | sed 's/togglefalse{solutions}/toggletrue{solutions}/' > $@

problem_set2_solutions.pdf: problem_set2_solutions.tex
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