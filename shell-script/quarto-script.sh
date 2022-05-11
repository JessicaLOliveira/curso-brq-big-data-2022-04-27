#!/bin/bash
###################################
#
# quarto-script.sh
#
# Autor: Fabrizio/Jessica
# Data de crição: 04 de maio de 2022

#
# Descrição: Estrutura de repeticao WHILE
###################################

CONTADOR=0

read -p "Informe um numero: " NUMERO
echo "NUMERO: $NUMERO"

while [ $CONTADOR -le $NUMERO ]
do
    echo "$CONTADOR" 
    sleep 1
    CONTADOR=$(($CONTADOR + 1))
    echo "$CONTADOR" 

done

#   ps aux | wc -l ---> conta o numero de linhas do comando/arquivo ps aux
#   ps aux | grep -c virtual ----> conta o numero de linhas do comando/arquivo ps aux
#                                em que aparece a palavra virtual
# ps é usado para saber quantos processos estao rodando na maquina



