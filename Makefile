TEX := pdflatex
TEXFLAGS := -interaction=nonstopmode -halt-on-error -file-line-error -synctex=0
BUILD_DIR := build
OUT_DIR := out
SOURCE := paper.tex

.DEFAULT_GOAL := all

.PHONY: all check

all: $(OUT_DIR)/paper.pdf

$(OUT_DIR)/paper.pdf: $(SOURCE) raeez-math-template.sty
	@mkdir -p $(BUILD_DIR) $(OUT_DIR)
	@$(TEX) $(TEXFLAGS) -output-directory=$(BUILD_DIR) $(SOURCE)
	@$(TEX) $(TEXFLAGS) -output-directory=$(BUILD_DIR) $(SOURCE)
	@! grep -aEq 'Reference .* undefined|Citation .* undefined|There were undefined references' $(BUILD_DIR)/paper.log
	@cp $(BUILD_DIR)/paper.pdf $(OUT_DIR)/paper.pdf
	@echo "built $(OUT_DIR)/paper.pdf"

check: all
	@pdfinfo $(OUT_DIR)/paper.pdf | grep '^Pages:'

