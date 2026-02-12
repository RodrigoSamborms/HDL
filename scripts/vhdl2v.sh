#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 2 ]]; then
  echo "Uso: vhdl2v.sh <archivo.vhd> <top> [salida.v]" >&2
  exit 1
fi

in="$1"
top="$2"
out="${3:-${in%.vhd}_from_vhdl.v}"

if [[ ! -f "$in" ]]; then
  echo "No existe el archivo: $in" >&2
  exit 1
fi

ghdl synth --out=verilog "$in" -e "$top" > "$out"

echo "Generado: $out"
