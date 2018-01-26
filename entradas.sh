#!/bin/bash

# Variáveis DIA; MES para nome do ARQ; VALOR para primeiro argumento
dia=$(date +%d)
arq=$(date +%b)'.csv'
valor=$1



# Cria um ARQ caso não exista com 31 linhas em branco::
[[ -e $arq ]] || for i in $(seq 31); do echo; done > $arq
 

if [[ "$#" -eq "0" ]]	# Na ausência de argumentos sairá do programa sem fazer qualquer alteração:
then
	echo "Falta valores..."; exit
else 
 	if [[ "$#" -eq "2" ]] 	# # Caso há 2 argumentos, o 2o. argumento será o núm. do DIA. Caso contr. o DIA será o da data atual. 
 	then
 		dia=$2
 	fi
fi 


# Coloca (sobrescreve) o VALOR na linha do DIA:
sed -i $dia'c\'$valor $arq




# Formato (usando a bandeira \c para sobreescrever na linha 1):
# sed -i "1c\Linha 1" Jan.csv 