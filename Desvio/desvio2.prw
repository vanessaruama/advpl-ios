#include "protheus.ch"

/*Ler dois valores (considere que não serão lidos valores iguais)e
escrever o maior deles.*/

User function desvio2()
local nvalor := Val(FWInputBox("Insira um numero")) 
local nvalor2 := Val(FWInputBox("Insira outro numero"))


IF nvalor > nvalor2
    alert(nvalor) 
else
    alert(nvalor2)
endif


return