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

{ echo $username; sleep 1;echo $password; sleep 1;echo "show running-config"; sleep 1; echo "close"; echo "exit" } | telnet $IP > $FILENAME-$(date "+%Y.%m.%d-%H.%M.%S").cfg

