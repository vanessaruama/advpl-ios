#include "protheus.ch"

/*Baseado no algoritmo desenvolvido no exercicio1, altere-o para que ele pare a
execu��o se encontrar a letra F no array. Ao parar a execu��o ele deve mostrar
quantas letras conseguiu ler at� aquele momento e quantas letras faltaram
analisar.*/

user function repa3()

local aLetras := {'V', 'S', 'G', 'M', 'N', 'B', 'A', 'B', 'F', 'V', 'G'}
local nX
local nTotal := 0

For nX := 1 to Len(aLetras)

    If aLetras[nX] == 'F'
    
    Exit

    EndIf

nTotal++

Next nX

Alert("Foram contados: " + cValtoChar(nTotal) + " letras.")

Alert("Faltaram contar: " + cValtoChar(Len(aLetras) - nTotal) + " letras.")


return

