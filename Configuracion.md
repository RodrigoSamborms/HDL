Actualizar el sistema:
#
```
sudo apt update && sudo apt upgrade -y
```
# Instalando las herramientas:
```
# Install Verilog Simulator
sudo apt install iverilog 

# Install VHDL Simulator
sudo apt install ghdl 

# Install Waveform Viewer (GUI)
sudo apt install gtkwave 

# Install Build Automation (Essential for TerosHDL)
sudo apt install make
```
# Para verificar la correcta instalación:
```
iverilog -V (Should show the Verilog version)

ghdl -v (Should show the VHDL version)

gtkwave (Should open an empty window)
```

# Herramientas recomendadas para la extensión de VS Code de TerosHDL 
```
# Python 3 is required for TerosHDL dependencies like 'vunit' or 'edalize'
sudo apt install python3 python3-pip

# Yosys is the 'synthesis' engine that TerosHDL uses to draw schematics
sudo apt install yosys

# Universal Ctags (Used for "Go to Definition" and Code Navigation)
sudo apt install universal-ctags
```

# Configurando TerosHDL
una vez que todo esta instalado necesitas decirle a TerosHDL donde encontrar los "motores" que acabas de instalar en WSL Debian.
Abre el icono de TerosHDL en la barra lateral
Ve a configuración (en el icono del engrane)
Debajo de Herramientas, revisa los directorios para:

Icarus Verilog: Usualmente en /usr/bin/iverilog

GHDL: Usualmente en /usr/bin/ghdl

GTKWave: Usualmente en /usr/bin/gtkwave

Tip Pro: Desde que tu estas en WSL, tu usualmente no necesitas teclear la dirección completa; solo teclea iverlog o ghdl en la caja de ajustes debería funcionar si estos estan en tu Linux $PATH.


sudo apt update
sudo apt install -y pipx
pipx ensurepath
pipx install yowasp-yosys

Cerrar la terminal y verificar la instalación:
which yowasp-yosys
yowasp-yosys -V
Si no funciona cierra VS Code y vuelve a intentar los dos comandos anteriores

# VHDL a Verilog para esquematicos (opcion simple)
TerosHDL puede dibujar esquematicos desde Verilog con Yosys. Para VHDL, usa GHDL
para convertir a Verilog y luego abre el archivo generado.

Manual (un archivo):
```
ghdl synth --out=verilog /home/rodrigo/GitHub/HDL/hdl_practice/half_adder.vhd -e half_adder \
	> /home/rodrigo/GitHub/HDL/hdl_practice/half_adder_from_vhdl.v
```
Luego abre el archivo .v generado y usa el icono Schematic viewer.

Una sola orden (script reutilizable dentro del proyecto):
```
chmod +x /home/rodrigo/GitHub/HDL/scripts/vhdl2v.sh
```

Uso:
```
/home/rodrigo/GitHub/HDL/scripts/vhdl2v.sh \
  /home/rodrigo/GitHub/HDL/hdl_practice/half_adder.vhd \
  half_adder
```

Salida generada:
```
/home/rodrigo/GitHub/HDL/hdl_practice/half_adder_from_vhdl.v
```

Para ver el esquematico en TerosHDL:
- Agrega el archivo .v generado al proyecto.
- Abre el .v generado y usa el icono Schematic viewer.