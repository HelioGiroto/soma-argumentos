#!/bin/bash

# Para executar esse script digite na linha do terminal:
# soma_argumentos.sh 1 2 3 4 5 6 (por exemplo)

echo "O número (qtde) de argumentos usados säo:" $#
echo "Todos os argumentos säo:" $*

while [ "$#" -gt "0" ]		# Enquanto (até que) o TOTAL de parâmetros seja maior que 0...
do
	soma=$((soma+$1))
	shift
done

echo "A soma dos argumentos é:" $soma


# Tal como no uso de ARRAYs, aqui nos parâmetros, se usa:

# $* ou $@ 	- para TOTAL dos parâmetros
# $# 		- para TAMANHO (length) dos parâmetros. Qtos?


# $0 - para nome do SCRIPT
