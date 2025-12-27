LATEX_COMPILER = latexmk
LATEX_FLAGS = -f -pdf

SRC_DIR = latex
OUT_DIR = public
TMP_DIR = tmp

RESUMES = resume-personal resume-university

.PHONY: all build clean

all: build

build: $(RESUMES:%=$(OUT_DIR)/%.pdf)

$(OUT_DIR)/%.pdf: $(SRC_DIR)/%.tex
	@mkdir -p $(TMP_DIR) $(OUT_DIR)
	@rm -rf $(TMP_DIR)/*
	$(LATEX_COMPILER) $(LATEX_FLAGS) -output-directory=$(TMP_DIR) $<
	@cp $(TMP_DIR)/$*.pdf $@
	@rm -rf $(TMP_DIR)

clean:
	@rm -rf $(TMP_DIR)
