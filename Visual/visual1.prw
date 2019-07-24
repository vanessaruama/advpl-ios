#include 'protheus.ch'

/*Crie uma janela com um botão de fechar. Ao clicar nesse botão a janela deverá
ser fechada.*/

user function visual1()

local oDlg


DEFINE DIALOG oDlg TITLE "Teste 1" FROM 100,100 TO 280,552 PIXEL

@020,100 BUTTON "Fechar" SIZE 025, 025 PIXEL OF oDlg ACTION (nOpca := 1, oDlg:End())

ACTIVATE MSDIALOG oDlg CENTER


return
