#include 'protheus.ch'

/*Criar uma função que recebe a altura (alt) e o sexo de uma pessoa e retorna o seu
peso ideal. Para homens, calcular o peso ideal usando a fórmula peso ideal = 72.7 x alt
- 58 e, para mulheres, peso ideal = 62.1 x alt - 44.7.*/

user function exfunc1()

//ENTRADA DE DADOS
local aPessoas := {}
local cmensagem := ''
local nX := 1

Aadd(aPessoas, {1.56, 'M', 0})
Aadd(aPessoas, {2.00, 'F', 0})
Aadd(aPessoas, {1.60, 'F', 0})
Aadd(aPessoas, {1.70, 'M', 0})
Aadd(aPessoas, {1.84, 'F', 0})

//PROCESSAMENTO DE DADOS
for nX := 1 to Len(aPessoas)
    aPessoas[nX,3] := u_calculo(aPessoas[nX,1], aPessoas[nX,2])
    cMensagem += 'O peso ideal da pessoa ' + cValtoChar(nX) + ;
    ' é ' + STR(aPessoas[nX, 3],6 /*NUMEROS MAX IMAGINADOS PARA O PESO INCLUINDO A VIRGULA*/,2) + CRLF 
next

//SAIDA DE DADOS
Alert(cMensagem)

return
