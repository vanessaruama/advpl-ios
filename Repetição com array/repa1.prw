#include "protheus.ch"

/*Escreva um algoritmo que tenha um array de letras. O algoritmo deve avaliar
quantas letras o array tem em seu conte�do e mostrar essa informa��o na tela
para o usu�rio.*/

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


