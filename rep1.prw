#include "protheus.ch"

user function rep1()

/*Escreva um algoritmo para ler 2 valores e se o segundo valor informado for
ZERO, deve ser lido um novo valor, ou seja, para o segundo valor não pode ser
aceito o valor zero e imprimir o resultado da divisão do primeiro valor lido pelo
segundo valor lido.*/

local nValor := val(FwInputBox("Digite um valor: "))
local nValor2 := val(FwInputBox("Digite outro valor: "))
local nTotal

While nValor2 == 0
    nValor2 := val(FwInputBox("Digite outro valor: "))
EndDo

nTotal := nValor/nValor2
    Alert("O resultado da divisão é: " + cValtoChar(nTotal))

return