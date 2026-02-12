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

# Herramientas recomendadas para la extensión de VS Code de TerosHDL 
```
# Python 3 is required for TerosHDL dependencies like 'vunit' or 'edalize'
sudo apt install python3 python3-pip

# Yosys is the 'synthesis' engine that TerosHDL uses to draw schematics
sudo apt install yosys

# Universal Ctags (Used for "Go to Definition" and Code Navigation)
sudo apt install universal-ctags
```

Configurando TerosHDL, una vez que todo esta instalado necesitas decirle a TerosHDL donde encontrar los "motores" que acabas de instalar en WSL Debian.
Abre el icono de TerosHDL en la barra lateral
Ve a configuración (en el icono del engrane)
Debajo de Herramientas, revisa los directorios para:

Icarus Verilog: Usualmente en /usr/bin/iverilog

GHDL: Usualmente en /usr/bin/ghdl

GTKWave: Usualmente en /usr/bin/gtkwave

Tip Pro: Desde que tu estas en WSL, tu usualmente no necesitas teclear la dirección completa; solo teclea iverlog o ghdl en la caja de ajustes debería funcionar si estos estan en tu Linux $PATH.