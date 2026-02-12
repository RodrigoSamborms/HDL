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

# Install Build Automation (Essential for automatizar)
sudo apt install make
```
# Para verificar la correcta instalación:
```
iverilog -V (Should show the Verilog version)

ghdl -v (Should show the VHDL version)

gtkwave (Should open an empty window)
```



