#!/bin/bash
###################################
#
# quinto-script.sh
#
# Autor: Fabrizio/Jessica
# Data de crição: 04 de maio de 2022

#
# Descrição: Estrutura de repeticao FOR aplicado a pastas
###################################

for i in /home/virtual/Desktop/brq/*
do
    #echo $i
    if [ -f $i ] #-f verifica se o arquivo existe ou nao
    then
        echo "O arquivo possui $(cat $i | wc -l) linhas"  #cat pega o conteudo do arquivo e mostra no console
    fi
done