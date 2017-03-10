#!/bin/bash

declare -i valorpuro
valor=`du -s /home/$USER` 
valor=`echo ${valor/"/home/$USER"/}`
echo "Seu uso atual foi de: " $valor "Kb --- O teto atual é de: 512000 Kb = 500 Mb"
valorpuro=`echo $valor`
if [ $valorpuro -gt 512000 ]; then
    mail -s "Aviso: limite de dados" $USER <<< "Atenção: Você ultrapassou o limite de 500Mb = 512000 Kb"
fi

#Aluno: Wellington Lima Pereira da Silva

#Situação: Enforcing Disk Quotas 

#Write a script for a multi-user system that checks users' disk usage. If a user surpasses a preset limit (500 MB, for example) in her /home/username directory, then the script automatically sends her a "pigout" warning e-mail.
#The script will use the du and mail commands. As an option, it will allow setting and enforcing quotas using the quota and setquota commands.

#wellmudou

