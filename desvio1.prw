#include "protheus.ch"

/*Ler um valor e escrever a mensagem � MAIOR QUE 10! se o
valor lido for maior que 10, caso contr�rio escrever N�O �
MAIOR QUE 10.*/

User function Avaliar()
local nvalor := Val(FWInputBox("Insira um numero")) //ENTRADA

//PROCESSAMENTO
IF nvalor > 10
    alert("� MAIOR QUE 10!") //SAIDA
else
    alert("N�O � MAIOR QUE 10.") //SAIDA
endif
//PROCESSAMENTO

return