#!/bin/bash
###################################
#
# segundo-script.sh
#
# Autor: Fabrizio/Jessica
# Data de crição: 04 de maio de 2022
# ----> primeiro argumento 'é o nome do arquivo e o segundo o texto a ser localizado' <-----
# Descrição: Busca um texto em um arquivo
###################################


#validando para que a pessoa passe os 2 argumentos:
if [ $# -le 1 ]
then 
    echo "Nome do arquivo e texto obrigatorio"
    exit 1
fi

#buscar palavra em um arquivo: -i case insensitive --> nao diferencia M e m
grep -i $2 $1  #  $2 = palavra a ser buscada ; $1 = arquivo. ele procura a procura a palavra dentro de um arquivo
                # por isso colocamos 2 antes de 1
                # se colocar $1 $2 ele busca o arquivo dentro da frase

grep -ic $2 $1 #conta o num de vezes que ele achou

CONTADOR=$(grep -ic $2 $1) #sem espaco pra declarar a variavel
echo $CONTADOR
# OU
echo "CONTADOR $CONTADOR"

if [ $CONTADOR -eq 0 ]
then 
    echo "Nenhuma ocorrencia da palavra"
elif [ $CONTADOR -eq 1 ]
then
    echo "Encontrou-se 1 ocorrencia"
else
    echo "Encontrou-se $CONTADOR ocorrencias"
fi

