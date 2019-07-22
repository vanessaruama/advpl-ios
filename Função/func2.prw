#include 'protheus.ch'

/*Criar uma função que receba dois números reais e retorne seu produto.*/

user function func2

local nNum1 := val(FwInputBox('Digite um numero: '))
local nNum2 := val(FwInputBox('Digite outro numero: '))
local nResul


nResul := u_proce2(nNum1, nNum2)

Alert(nResul)

return

user function proce2 (nNum1, nNum2)

local nTotal

nTotal := nNum1*nNum2

return nTotal