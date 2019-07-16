#include "protheus.ch"

/*Ler um valor e escrever a mensagem É MAIOR QUE 10! se o
valor lido for maior que 10, caso contrário escrever NÃO É
MAIOR QUE 10.*/

User function Avaliar()
local nvalor := Val(FWInputBox("Insira um numero")) //ENTRADA

//PROCESSAMENTO
IF nvalor > 10
    alert("É MAIOR QUE 10!") //SAIDA
else
    alert("NÃO É MAIOR QUE 10.") //SAIDA
endif
//PROCESSAMENTO

return