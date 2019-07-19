#include "protheus.ch"

/*Escreva um algoritmo que tenha um array de letras. O algoritmo deve avaliar
quantas letras o array tem em seu conteúdo e mostrar essa informação na tela
para o usuário.*/

user function repa1()

local aLetras := {'V', 'F', 'G', 'M', 'N', 'B', 'A', 'B'}
local nX
local nTotal := 0

For nX := 1 to Len(aLetras)

    If aLetras[nX] <> 'A' .and. aLetras[nX] <> 'B'
    nTotal++ 

    EndIf

Next nX

Alert(nTotal)

return


