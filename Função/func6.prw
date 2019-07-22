#include 'protheus.ch'

/*Criar uma função que recebe a altura (alt) e o sexo de uma pessoa e retorna o seu
peso ideal. Para homens, calcular o peso ideal usando a fórmula peso ideal = 72.7 x alt
- 58 e, para mulheres, peso ideal = 62.1 x alt - 44.7.*/

user function func6()

//ENTRADA DE DADOS
local naltura := Val(FwInputBox('Digite a altura: '))
local csexo := FwInputBox('Digite M para masculino e F para feminino: ')
local npeso

//PROCESSAMENTO DE DADOS
npeso := u_calculo(naltura, csexo)

//SAIDA DE DADOS
Alert(npeso)


return

user function calculo(naltura, csexo)

local nRet := 0

//homens = 72.7 x alt - 58
//mulheres = 62.1 x alt - 44.7

If Upper(csexo) == 'M'
    nRet := 72.7 * naltura - 58

ElseIf Upper(csexo) == 'F'
    nRet := 62.1 * naltura - 44.7


EndIf

return nRet