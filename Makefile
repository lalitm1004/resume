LATEX_COMPILER = latexmk
LATEX_FLAGS = -f -pdf
WATCH_FLAGS = -pvc

SRC_DIR = latex
OUT_DIR = public
TMP_DIR = tmp

RESUMES = resume-personal resume-university

.PHONY: all build clean

all: build

build: $(OUT_DIR)/lalit_maurya_resume.pdf $(OUT_DIR)/lalit_maurya_resume_uni.pdf $(OUT_DIR)/_redirects

$(OUT_DIR)/lalit_maurya_resume.pdf: $(SRC_DIR)/resume-personal.tex
	@mkdir -p $(TMP_DIR) $(OUT_DIR)
	@rm -rf $(TMP_DIR)/*
	$(LATEX_COMPILER) $(LATEX_FLAGS) -output-directory=$(TMP_DIR) $(SRC_DIR)/resume-personal.tex
	@cp $(TMP_DIR)/resume-personal.pdf $@
	@rm -rf $(TMP_DIR)

$(OUT_DIR)/lalit_maurya_resume_uni.pdf: $(SRC_DIR)/resume-university.tex
	@mkdir -p $(TMP_DIR) $(OUT_DIR)
	@rm -rf $(TMP_DIR)/*
	$(LATEX_COMPILER) $(LATEX_FLAGS) -output-directory=$(TMP_DIR) $(SRC_DIR)/resume-university.tex
	@cp $(TMP_DIR)/resume-university.pdf $@
	@rm -rf $(TMP_DIR)

$(OUT_DIR)/_redirects:
	@mkdir -p $(OUT_DIR)
	@echo "/  /lalit_maurya_resume.pdf  200" > $@
	@echo "/uni  /lalit_maurya_resume_uni.pdf  200" >> $@

watch:
	@mkdir -p $(TMP_DIR) $(OUT_DIR)
	$(LATEX_COMPILER) $(LATEX_FLAGS) $(WATCH_FLAGS) -outdir=$(TMP_DIR) $(SRC_DIR)/resume.tex

clean:
	@rm -rf $(TMP_DIR)