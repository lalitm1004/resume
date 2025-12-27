TMP = tmp

.PHONY: build clean

build: resume-personal resume-university clean

resume-personal:
	mkdir -p $(TMP)
	rm -rf ${TMP}/*
	latexmk -f -pdf -output-directory=$(TMP) latex/resume-personal.tex
	cp $(TMP)/resume-personal.pdf ./resume-personal.pdf

resume-university:
	mkdir -p $(TMP)
	rm -rf ${TMP}/*
	latexmk -f -pdf -output-directory=$(TMP) latex/resume-university.tex
	cp $(TMP)/resume-university.pdf ./resume-university.pdf

clean:
	rm -rf $(TMP) *.fdb_latexmk *.fls *.log *.aux
