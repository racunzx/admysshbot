#!/bin/bash
#Scripiter Penguin
#

# Color Codes

#Black        0;30     Dark Gray     1;30
#Red          0;31     Light Red     1;31
#Green        0;32     Light Green   1;32
#Brown/Orange 0;33     Yellow        1;33
#Blue         0;34     Light Blue    1;34
#Purple       0;35     Light Purple  1;35
#Cyan         0;36     Light Cyan    1;36
#Light Gray   0;37     White         1;37

menu()
{
black='\033[0;30m'
red='\033[0;31m'
green='\033[0;32m'
browno='\033[0;33m'
blue='\033[0;34m'
purple='\033[0;35m'
cyan='\033[0;36m'
lightgray='\033[0;37m'
darkgray='\033[1;30m'
lightred='\033[1;31m'
lightgreen='\033[1;32m'
yellow='\033[1;33m'
lightblue='\033[1;34m'
lightpurple='\033[1;35m'
lightcyan='\033[1;36m'
white='\033[1;37m'
clear
tput setaf 7 ; tput setab 4 ; tput bold ; printf '%30s%s%-10s\n' "Painel Web V20 Centos 7 Installer" ; tput sgr0 ; echo ""
tput setaf 7 ; tput setab 4 ; tput bold ; printf "${red}Portas abertas: " ; echo $port2 | sed -n 's_([^ ]*__p' ; tput sgr0 ; echo ""
tput setaf 2 ; tput bold ; printf '%s' "|1|"; tput setaf 6 ; printf '%s' " Instalar" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Instalar o Painel WEB" ; tput sgr0 ;
tput setaf 2 ; tput bold ; printf '%s' "|0|"; tput setaf 6 ; printf '%s' " Sair" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "So sai O.o" ; tput sgr0 ;
echo ""
tput setaf 7 ; tput setab 4 ; tput bold ; printf '%30s%s%-10s\n' "Digite a opcao desejada" ; tput sgr0 ; echo ""
read  opcao

case $opcao in
	1) install ;;
	0) voltar ;;
esac
}



install()
{
printf "${red}Instalando alguns pacotes nescessarios" ; echo ""
printf "Se nescessario pare o processo agora" ; echo ""
printf "iniciando em 10 segundos" ; echo ""
printf "${white}"
sleep 11
clear
apt-get update 
apt-get upgrade -y
apt-get install dos2unix php php-curl php-redis redis-server screen zip redis -y
clear 
printf "${green} Agora vamos baixar o bot e seus arquivos !" ; echo ""
printf "${white}"
mkdir botamarelo
cd botamarelo
wget https://raw.githubusercontent.com/Penguinehis/admysshbot/master/Telegram.php
wget https://raw.githubusercontent.com/Penguinehis/admysshbot/master/textos.json
wget https://raw.githubusercontent.com/Penguinehis/admysshbot/master/bot.php
#Comando usado do script Centos 7 Github Penguinehis
#sed -i "s;1010;$password;g" /var/www/panel/pages/system/pass.php
clear
printf "${green}Vamos agora editar as mensagens" ; echo ""
printf "Aperte enter assim que estiver com os seguindos dados" ; echo ""
printf "Seu token do BOT pegue aqui @botfather " ; echo ""
read entercake
clear 
printf "${green}Okay o que deseja para esta mensagem" ; echo ""
printf "SSH Gratis Brasil" ; echo ""
read sshbr
#essa função if [ -z "$variavel" ] checka se a mesma está vazia caso estege ele ira retornar um comando neste caso ele retorna a mensgem original do bot
if [ -z "$sshbr" ]; then
sed -i "s;Q3IvNUFeTcnc;SSH Gratis Brasil;g" bot.php
else
sed -i "s;Q3IvNUFeTcnc;$sshbr;g" bot.php
fi
clear
printf "${green} Okay o que deseja para esta mensagem" ; echo ""
printf "Bot Original @admysshbot" ; echo ""
read sobecake
if [ -z "$sobecake" ]; then
sed -i "s;r9HQh8hrPpz4;Bot Original @admysshbot;g" bot.php
else
sed -i "s;r9HQh8hrPpz4;$sobecake;g" bot.php
fi
clear
printf "${green} Okay o que deseja para esta mensagem" ; echo ""
printf "Cortesia YellowSSHBot" ; echo ""
read corteamarelo
if [ -z "$corteamarelo" ]; then
sed -i "s;luUxVe97oD29;Cortesia YellowSSHBot;g" bot.php
else
sed -i "s;luUxVe97oD29;$corteamarelo;g" bot.php
fi
clear 
printf "${green} Tudo bem quantas horas para cada registro?" ; echo ""
printf "Tempo atual ${red} 43200 ${yellow} 12 horas ${green}" ; echo ""
read hora 
if [ -z "$hora" ]; then
sed -i "s;43200;43200;g" bot.php
else
sed -i "s;43200;$hora;g" bot.php
fi
