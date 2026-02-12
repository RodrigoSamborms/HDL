
# Uso del Makefile
Ejemplos rapidos desde la raiz del repo:

## Convencion modulo + modulo_tb en hdl_practice
```bash
make wave LANG=verilog NAME=half_adder
make wave LANG=vhdl NAME=half_adder
```

## Rutas explicitas para HDL y testbench
```bash
make wave-verilog VLOG_TOP=mi_tb VLOG_HDL=hdl_practice/mi_mod.v VLOG_TB=hdl_practice/mi_tb.v
make wave-vhdl VHDL_TOP=mi_tb VHDL_HDL=hdl_practice/mi_mod.vhd VHDL_TB=hdl_practice/mi_tb.vhd
```

## Solo simular (sin GTKWave)
```bash
make sim LANG=verilog NAME=half_adder
make sim LANG=vhdl NAME=half_adder
```

Notas:
- Para Verilog, el testbench debe generar un VCD con $dumpfile y $dumpvars.
- El VCD se guarda en la carpeta build/.


