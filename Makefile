.PHONY: sim sim-verilog wave wave-verilog sim-vhdl wave-vhdl clean help

BUILD_DIR := build

NAME ?= half_adder
LANG ?= verilog

VLOG_TOP ?= $(NAME)_tb
VLOG_HDL ?=
VLOG_TB ?=
VLOG_SRC ?= hdl_practice/$(NAME).v hdl_practice/$(NAME)_tb.v
VLOG_OUT ?= $(BUILD_DIR)/$(NAME)_vvp
VLOG_VCD ?= $(BUILD_DIR)/$(NAME).vcd

VHDL_TOP ?= $(NAME)_tb
VHDL_HDL ?=
VHDL_TB ?=
VHDL_SRC ?= hdl_practice/$(NAME).vhd hdl_practice/$(NAME)_tb.vhd
VHDL_VCD ?= $(BUILD_DIR)/$(NAME)_vhdl.vcd
VHDL_WORK := $(BUILD_DIR)/ghdl

ifneq ($(strip $(VLOG_HDL)$(VLOG_TB)),)
VLOG_SRC := $(VLOG_HDL) $(VLOG_TB)
endif

ifneq ($(strip $(VHDL_HDL)$(VHDL_TB)),)
VHDL_SRC := $(VHDL_HDL) $(VHDL_TB)
endif

sim: sim-$(LANG)

wave: wave-$(LANG)

sim-verilog: $(VLOG_OUT)
	vvp $(VLOG_OUT)

$(VLOG_OUT): $(VLOG_SRC)
	mkdir -p $(BUILD_DIR)
	iverilog -g2012 -s $(VLOG_TOP) -o $(VLOG_OUT) $(VLOG_SRC)

wave-verilog: sim-verilog
	gtkwave $(VLOG_VCD)

sim-vhdl:
	mkdir -p $(VHDL_WORK)
	ghdl -a --workdir=$(VHDL_WORK) $(VHDL_SRC)
	ghdl -e --workdir=$(VHDL_WORK) $(VHDL_TOP)
	ghdl -r --workdir=$(VHDL_WORK) $(VHDL_TOP) --vcd=$(VHDL_VCD)

wave-vhdl: sim-vhdl
	gtkwave $(VHDL_VCD)

clean:
	rm -rf $(BUILD_DIR)

help:
	@echo "Uso: make wave LANG=verilog NAME=half_adder"
	@echo "     make wave LANG=vhdl NAME=half_adder"
	@echo "     make wave-verilog VLOG_TOP=tb VLOG_HDL=path/mod.v VLOG_TB=path/tb.v"
	@echo "     make wave-vhdl VHDL_TOP=tb VHDL_HDL=path/mod.vhd VHDL_TB=path/tb.vhd"
	@echo "     make wave-verilog VLOG_TOP=tb VLOG_SRC=\"src.v tb.v\""
	@echo "     make wave-vhdl VHDL_TOP=tb VHDL_SRC=\"src.vhd tb.vhd\""
