#!/bin/bash

##########################################################################
# Backup-Switch-Datacom
# Filename: swdatacom-backup.sh
# Revision: 1.0
# Date: 09/11/2016
# Author: Diego Maia - diegosmaia@yahoo.com.br Telegram - @diegosmaia
# Executar: 
# ./swdatacom-backup.sh 192.168.0.1 swdatacom-empresa
##########################################################################

###################
#Dados fornecidos pelo usuário
###################
IP=$1
FILENAME=$2

######################
# Usuario do Sw Datacom
######################
username='dmaia'
password='dmaiasenha'

###################################
# Logando no telnet do equipamento
###################################

 {sleep 3;echo '\n';sleep 2; echo $username; sleep 2;echo $password; sleep 2;echo "enable";echo "copy startup-config tftp://172.17.3.23//$FILENAME-$(date "+%Y.%m.%d-%H.%M.%S").bin"; sleep 20; echo "close"; echo "exit"; } | telnet $IP



