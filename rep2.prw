#include "protheus.ch"

/*Escreva um algoritmo para ler as notas da 1a. e 2a. avalia��es de um aluno,
calcule e imprima a m�dia (simples) desse aluno. S� devem ser aceitos valores
v�lidos durante a leitura (0 a 10) para cada nota.*/

user function rep2()

local nNota := -1
local nNota2 := -1
local nMedia
local lRepete := .T.

While lRepete

    nNota := nNota2 := -1

    While nNota <0 .or. nNota >10
        nNota := val(FwInputBox("Digite a primeira nota: "))    
    EndDo

    While nNota2 <0 .or. nNota2 >10
        nNota2 := val(FwInputBox("Digite a segunda nota: "))
    EndDo

    nMedia := (nNota + nNota2) /2
    Alert("O resultado da media �: " + cValtoChar(nMedia))

    lRepete := MSGYESNO("Desejar calcular novamente? ", "media do aluno")

EndDo

return