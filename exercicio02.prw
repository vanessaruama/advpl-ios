#include "Protheus.ch"

user function media()
local nNota1:= 0
local nNota2:= 0
local nNota3:= 0
local cNota1:= ' '
local cNota2:= ' '
local cNota3:= ' '
local nTotal:= 0
local nTotal1:= 0

cNota1:= Fwinputbox("Digite o primeiro n�mero")
cNota2:= Fwinputbox("Digite o segundo n�mero")
cNota3:= Fwinputbox("Digite o terceiro n�mero")

nNota1:= val(cNota1)
nNota2:= val(cNota2)
nNota3:= val(cNota3)

nTotal:= (nNota1 * 2 ) + (nNota2 * 3) + (nNota3 * 5)
nTotal1:=(nTotal/10) 
alert ("A m�dia � "+ cValtochar(nTotal1))

return 