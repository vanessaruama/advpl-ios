#include 'protheus.ch'

/*Crie uma janela com um bot�o de fechar. Ao clicar nesse bot�o a janela dever�
ser fechada.*/

user function visual1()

local oDlg


DEFINE DIALOG oDlg TITLE "Teste 1" FROM 100,100 TO 280,552 PIXEL

@020,100 BUTTON "Fechar" SIZE 025, 025 PIXEL OF oDlg ACTION (nOpca := 1, oDlg:End())

ACTIVATE MSDIALOG oDlg CENTER


return
