#! /bin/bash
# BY ZEROKILL --->

#---------------------

#--------------------
function escaneo {
	sudo nmap -f -sS -sC $ip
	}

function vuln {
	nmap -script vuln $ip
	}

#vuln () {}

#echo -e "\e[34mRango de red \e[0m" read rango
read -p "Rango de Red: " rango

echo -e "\e[31mViendo red\e[0m"
sleep 5 
sudo netdiscover -r $rango


read -p "Ingrasea la ip de la Victima: " ip
echo
echo -e  "\e[34mSe busca Puertos Abiertos -sS + sC\e[0m"
echo

escaneo
echo
echo
echo -e "\e[31mSegundo Rastreo Se Busca Vulnerabilidades  -script vuln\e[0m"
echo
echo
vuln
