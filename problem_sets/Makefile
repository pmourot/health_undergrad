
all: TFU_bank.pdf problem_set1_solutions.pdf problem_set1.pdf problem_set2_solutions.pdf problem_set2.pdf \
	midterm1_solutions.pdf midterm1.pdf problem_set3_solutions.pdf problem_set3.pdf

#TFU bank of questions with solutions
TFU_bank.pdf: TFU_bank.tex
	pdflatex $< 
	pdflatex $< 
	pdflatex $< 
	rm $(addprefix $(basename $<),.log .aux .out .toc)
	rm $(addprefix $(basename $<),.snm .nav)
	rm $(addprefix $(basename $<),.blg .bbl)


#PS1
problem_set1.pdf: problem_set1.tex
	pdflatex $< 
	pdflatex $< 
	pdflatex $< 
	rm $(addprefix $(basename $<),.log .aux .out .toc)
	rm $(addprefix $(basename $<),.snm .nav)
	rm $(addprefix $(basename $<),.blg .bbl)

problem_set1_solutions.tex: problem_set1.tex
	cat $< | sed 's/togglefalse{solutions}/toggletrue{solutions}/' > $@

problem_set1_solutions.pdf: problem_set1_solutions.tex
	pdflatex $< 
	pdflatex $< 
	pdflatex $< 
	rm $(addprefix $(basename $<),.log .aux .out .toc)
	rm $(addprefix $(basename $<),.snm .nav)
	rm $(addprefix $(basename $<),.blg .bbl)

#PS2
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

#PS3
problem_set3.pdf: problem_set3.tex
	pdflatex $< 
	pdflatex $< 
	pdflatex $< 
	rm $(addprefix $(basename $<),.log .aux .out .toc)
	rm $(addprefix $(basename $<),.snm .nav)
	rm $(addprefix $(basename $<),.blg .bbl)

problem_set3_solutions.tex: problem_set3.tex
	cat $< | sed 's/togglefalse{solutions}/toggletrue{solutions}/' > $@

problem_set3_solutions.pdf: problem_set3_solutions.tex
	pdflatex $< 
	pdflatex $< 
	pdflatex $< 
	rm $(addprefix $(basename $<),.log .aux .out .toc)
	rm $(addprefix $(basename $<),.snm .nav)
	rm $(addprefix $(basename $<),.blg .bbl)

#MIDTERM 1
midterm1.pdf: midterm1.tex
	pdflatex $< 
	pdflatex $< 
	pdflatex $< 
	rm $(addprefix $(basename $<),.log .aux .out .toc)
	rm $(addprefix $(basename $<),.snm .nav)
	rm $(addprefix $(basename $<),.blg .bbl)

midterm1_solutions.tex: midterm1.tex
	cat $< | sed 's/togglefalse{solutions}/toggletrue{solutions}/' > $@

midterm1_solutions.pdf: midterm1_solutions.tex
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