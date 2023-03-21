#!/bin/bash
#Script creado por Krypton
#Script para ver informacion de una IP mas su posible localizacion
#Derecho de autor:Krypton-Hacks (KevinVarsa)
#Feliz HackingDay :D
#SCRIPT ACTUALIZADO Y CON MAS INFORMACION
#colores
white="\e[1;37m"
red="\e[1;31m"
blue="\e[1;34m"
rdk="\e[0;31m"
cdk="\e[0;36m"
gdk="\e[0;32m"
ydk="\e[0;33m"
bdk="\e[0;34m"
echo -e $red " ██ ▄█▀ ██▀███ ▓██   ██▓ ██▓███  ▄▄▄█████▓ ▒█████   ███▄    █     ██▓ ██▓███   "
echo -e $red " ██▄█▒ ▓██ ▒ ██▒▒██  ██▒▓██░  ██▒▓  ██▒ ▓▒▒██▒  ██▒ ██ ▀█   █    ▓██▒▓██░  ██▒ "
echo -e $red "▓███▄░ ▓██ ░▄█ ▒ ▒██ ██░▓██░ ██▓▒▒ ▓██░ ▒░▒██░  ██▒▓██  ▀█ ██▒   ▒██▒▓██░ ██▓▒ "
echo -e $red "▓██ █▄ ▒██▀▀█▄   ░ ▐██▓░▒██▄█▓▒ ▒░ ▓██▓ ░ ▒██   ██░▓██▒  ▐▌██▒   ░██░▒██▄█▓▒ ▒ "
echo -e $red "▒██▒ █▄░██▓ ▒██▒ ░ ██▒▓░▒██▒ ░  ░  ▒██▒ ░ ░ ████▓▒░▒██░   ▓██░   ░██░▒██▒ ░  ░ "
echo -e $red "▒ ▒▒ ▓▒░ ▒▓ ░▒▓░  ██▒▒▒ ▒▓▒░ ░  ░  ▒ ░░   ░ ▒░▒░▒░ ░ ▒░   ▒ ▒    ░▓  ▒▓▒░ ░  ░ "
echo -e $red "░ ░▒ ▒░  ░▒ ░ ▒░▓██ ░▒░ ░▒ ░         ░      ░ ▒ ▒░ ░ ░░   ░ ▒░    ▒ ░░▒ ░      "
echo -e $red "░ ░░ ░   ░░   ░ ▒ ▒ ░░  ░░         ░      ░ ░ ░ ▒     ░   ░ ░     ▒ ░░░        "
echo -e $red " ░  ░      ░     ░ ░                           ░ ░           ░     ░           "
echo -e $red "               ░ ░                                                             "
echo -e $white "                                (by:KevinVarsa)                                "


echo -e $red ""
echo "Bienvenido a KryptonIP..."
sleep 1
echo ""
echo -e $red "ESCOJA UNA OPCION"
echo ""
echo -e $white "1:Ingresar IP"
echo -e $white "2:Salir"
echo -e $white
read -p "OPCION: " a
echo ""

if (( $a == 1))
then
echo -e $red "Ingrese la IP del destino"
echo -e $white
read -p "IP: " ip
echo -e $red ""
echo         "IP RECONOCIDA CON EXITO!"
elif (( $a == 2 ))
then
echo -e $red "Saliendo..."
sleep 2.1
exit
fi

sleep 1.5
echo -e $red ""
function repeat() {
echo "Ingrese un inciso"
echo -e $white ""
echo "3: Informacion basica de la IP"
echo "4: Informacion profunda de la IP"
echo "5: Salir"
echo -e $white
read -p      "INCISO: " teclado
echo -e $red
echo ""
case $teclado in
[3-4-5])
if (( $teclado == 3))
then 
echo -e $red "Hackeando la direccion IP"
sleep 1.5
echo ""
curl -s http://ip-api.com/$ip  
elif (( $teclado == 4 ))
then 
echo  -e $red "Hackeando la direccion IP"
sleep 1.5
echo ""
whois $ip;ping -c 3 $ip
elif (($teclado == 5))
then
echo "Saliendo..."
sleep 1.5
exit
fi
;;
*) echo "No ingreso un numero valido , intentelo de nuevo..."
sleep 2
clear
repeat
;;
esac
}
repeat
echo""
echo -e $red
echo "HACKEO COMPLET0!!!"
echo ""
sleep 2
echo -e $white "PRESIONE [ENTER] PARA SALIR"
read f
echo -e $white "GRACIAS POR USAR KRYPTON-IP :D FELIZ HACKINGDAY"

 


