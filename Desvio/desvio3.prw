#include "protheus.ch"

//Ler um valor e escrever se é positivo, negativo ou zero.

User function desvio3()
local nvalor := Val(FWInputBox("Insira um numero")) 



if nvalor < 0
    alert("Negativo") 
elseif nvalor > 0
    alert("Positivo")
else
    alert("O valor digitado é zero")

endif


return