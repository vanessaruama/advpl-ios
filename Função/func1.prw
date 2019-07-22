#include 'protheus.ch'

user function func1

/*Criar uma função que receba dois inteiros e retorne sua soma.*/

local nNum1 := val(FwInputBox('Digite um numero: '))
local nNum2 := val(FwInputBox('Digite outro numero: '))
local nResul


nResul := u_proce1(nNum1, nNum2)

Alert(nResul)

return

user function proce1 (nNum1, nNum2)

local nTotal

nTotal := nNum1+nNum2

return nTotal