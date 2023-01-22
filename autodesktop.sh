#/bin/bash/

echo "Este script solo funciona en Arch linux / Derivadas"
echo "Se recomienda usar sudo"
sleep 3
clear
#banner

echo "
 ____  _____ ____         ____ _   _  ___  ____ _____
|  _ \|___ /|  _ \       / ___| | | |/ _ \/ ___|_   _|
| |_) | |_ \| | | |_____| |  _| |_| | | | \___ \ | |
|  _ < ___) | |_| |_____| |_| |  _  | |_| |___) || |
|_| \_\____/|____/       \____|_| |_|\___/|____/ |_|
"
#Github teoriaslocas / r3dgh0st

#menu 

echo "[1] Instalacion de Dependencias"
echo "[2] Instalacion de AwesomeWM"
echo "[3] Instalar Librerias de Blackarch"
echo "[4] Salir del Script"

echo "====>: "

read i 

if [ $i = 1 ]; then
    pacman -S git 
    echo "Depedencias Instaladas"
    clear
    bash autodesktop.sh
elif [ $i = 2 ]; then
    git clone https://github.com/yorkox0/autoAwesome; cd autoAwesome; bash autoAwesome.sh
    clear
    echo "Instalacion del AwesomeWM Exitosa"
    bash autodesktop.sh
elif [ $i = 3 ]; then
    echo "Librerias de Blackarch"
    curl -O https://blackarch.org/strap.sh
    echo 5ea40d49ecd14c2e024deecf90605426db97ea0c strap.sh | sha1sum -c
    chmod +x strap.sh
    sudo ./strap.sh
    sudo pacman -Syu
    bash autodesktop.sh
elif [ $i = 4 ]; then
    exit 0
 

fi 
