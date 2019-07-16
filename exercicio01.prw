#include "Protheus.ch"

user function SomaNun()
local nNun1:=0
local nNun2:=0
local nTotal:=0
Local cNun1:= ' '
Local cNun2:= ' '

cNun1:= Fwinputbox("Digite o primeiro número")
cNun2:= Fwinputbox("Digite o segundo número")

nNun1:= val(cNun1)
nNun2:= val(cNun2)
nTotal:= nNun1+nNun2
alert('A soma é '+ cValtochar(nTotal))

return 