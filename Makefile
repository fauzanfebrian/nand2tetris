# ==============================================================================
# Nand2Tetris Tool Runner
# ==============================================================================
# Usage: make [tool] [ARGS="path/to/file"]
# Example: make hardware ARGS="projects/01/Not.tst"
# ==============================================================================

TOOLS := tools
SHELL := /bin/bash

.PHONY: help hardware cpu vm asm compiler compare

# Default: List commands
help:
	@echo "Available commands:"
	@echo "  make hardware   -> Hardware Simulator"
	@echo "  make cpu        -> CPU Emulator"
	@echo "  make vm         -> VM Emulator"
	@echo "  make asm        -> Assembler"
	@echo "  make compiler   -> Jack Compiler"
	@echo "  make compare    -> Text Comparer"
	@echo ""
	@echo "Example: make hardware ARGS='projects/01/Not.tst'"

# --- Tools ---
hardware:
	@$(TOOLS)/HardwareSimulator.sh $(ARGS)

cpu:
	@$(TOOLS)/CPUEmulator.sh $(ARGS)

vm:
	@$(TOOLS)/VMEmulator.sh $(ARGS)

asm:
	@$(TOOLS)/Assembler.sh $(ARGS)

compiler:
	@$(TOOLS)/JackCompiler.sh $(ARGS)

compare:
	@$(TOOLS)/TextComparer.sh $(ARGS)