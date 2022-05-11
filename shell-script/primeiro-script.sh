#!/bin/bash
###################################
#
# primeiro-script.sh
#
# Autor: Fabrizio/Jessica
# Data de crição: 02 de maio de 2022
#
# Descrição: Primeiro Script de Criação da Aula de Big Data
###################################

#para rodar o arquivo:  -------------> sh primeiro-script.sh  ou ./primeiro-script.sh

echo 'Texto no console'

echo 'Criando pasta...'
mkdir -p diretorio-brq
# mkdir serve para criar uma pasta. 
# Se usarmos o parâmetro -p, permite criar
#   pastas não existentes ou não apresentar erros
#   quando a pasta já existe
# ex: mkdir -p diretorio-brq

ls -ls
# ls lista todas as pastas do diretório de interesse junto
#   com detalhes de horário de criação/modificação e suas permissões (parâmetro -l)

rm -r diretorio-brq
# rm deleta arquivos ou pastas de interesse.
# para deletar uma pasta, devemos passar o parâmetro -r (recursivo) 

#tail -f arquivo.txt
# serve para mostrar as últimas linhas de um aquivo
#   e deixar o mesmo aberto para vermos as novas linhas
#   inseridas no final do arquivo

#sleep 3
# serve para "dormir" (parar console) por x segundos

touch arquivo.txt
# touch serve para criar um arquivo vazio ou para atualizar
#   a data de modificação do arquivo
# nesse caso cria um arquivo chamado arquivo.txt (do tipo txt)
# putro tipo: touch primeiro-scrip.sh

#SCRIPT: PARA ESCREVER CODIGO ---> xxxxx.sh
#TXT: PARA ESCREVER TEXTO  ---> xxxxxx.txt

# defini uma variável com o nome CONTADOR e iniciei o valor com 0
CONTADOR_UM=0
PASTA="/home/virtual/Desktop/brq"
#PASTA="~/Desktop/brq"

# imprimi o conteúdo da variável contador (não esquecer do $)
echo "O valor do CONTADOR é $CONTADOR_UM"

echo "usando LS"
ls $PASTA

DATAHORA=$(date +%Y-%m-%d---%H:%M)

echo "$DATAHORA usando PWD"
pwd

# man -> é o manual dos comandos linux
# Ex: man tail

# wc -> contador de palavras (word count)
# -l -> contar numero de linhas
# -c --> contar caracteres
# -w -> contar palavras

# pipe (|) serve para pegar o resultado de um comando e inserir como entrada
# em um proximo  comando

# comando  > arquivo --- coloca o resultado de um 


# grep serve para buscar uma  palavra (FRASE) dentro de um arquivo (ARQUIVO.TXT)
#ex: -->   grep frase arquivo.txt 
#ao passa o comando -R (recursivo), iiremos buscar uma palavra dentro
# dos arquivos de um diretorio

# wget faz download de  um arquivo

# tail pega as ultimas 10 linhas
# tail -n 100 permite pegar as 100 ultimas linhas

echo "Nome do script $0" #pega o  nome do script
echo "Quantidade de argumentos $#" # $# pega o numero de arquivos passadados na chamada do script
echo "Primeiro argumento $1" #pega o primeiro argumento (argumento tem que ser passado no sh primeiro-script.sh argumento)


#no shellscript -eq (equals) é equivalente ao sinal de =
# -ge (greater than equal) --> (>=)
# -le (less than equal) --> (<=)

if [ $# -eq 0 ] #tem q por os espaços
then 
    echo "Nenhum parametro foi passado"
    exit 1
fi  #fi fecha o if

#se fosse em  python:
# if $# == 0:
#   print ("Nenhum parametro foi passado")

#   sh primeiro.script.sh arquivo.txt frase:
#   busca no arquivo.txt a palavra frase


# chown -R (arquivo) <usuario>:<grupo-usuario> <nome-arquivo>  ------> trocar o dono de um arquivo
# sudo --> permite executar um comando com usuario que possua super permissoes 
#pra ver se o usuario foi trocado,basta dar um ls -l e verificar o usuario do arquivo que foi trocado

#ls -l:
# tem 3 colunas: rw-rw-r
#sao as permissoes que cada tipo de usuario tem (read and write)
# 1-dono, 2- usuario, 3-usuario convidado
# virtual virtual (dono e usuario)

# 0= Sem permissao
# 1= Execucao
# 2= Escrita
# 4= Leitura
# 3 --> 1+2
# 5 --> 1+4
# 6 --> 2+4
# 7--> 1+2+4
#ex.: rw --> 6 \\\ r --> 4

#para mudar a permissao usar chmod --> chmod 660 arquivo.txt --> usuario 1 e 2 tem permissao 6 e o convidado permissao 0
#pra verificar se deu certo usar ls-l








