#include 'protheus.ch'

/*Crie uma janela com 2 campos do tipo GET para solicitar o nome de um usuário
e sua senha. Adicione um botão de OK e um de cancelar. Ao clicar em OK deve-
se avaliar se a senha é igual a "IOS2019", caso seja, exibir uma mensagem de
senha correta. Se estiver errado exibir uma mensagem de senha incorreta. Ao
clicar em cancelar deve-se fechar a janela*/

user function visual2()

local oDlg
local dNome1 := space(20)
local cPassW := space(20)


DEFINE DIALOG oDlg TITLE "Teste 1" FROM 100,100 TO 280,552 PIXEL

    @ 10,110 MSGET dNome1 PICTURE SIZE 45,7 PIXEL OF oDlg

    oFont := TFont():New('Courier new',,-18,.T.)

    @ 10,10 SAY oSay PROMPT 'Nome de Usuario:' SIZE 100,200 COLORS CLR_BLACK,CLR_WHITE FONT oFont OF oDlg PIXEL

    @ 30,10 SAY oSay PROMPT 'Senha:' SIZE 100,200 COLORS CLR_BLACK,CLR_WHITE FONT oFont OF oDlg PIXEL

    @ 30,110 GET oGet VAR cPassW SIZE 030,010 OF oDlg PIXEL VALID !empty(cPassW) PASSWORD

    @70,50 BUTTON "Ok" SIZE 025, 025 PIXEL OF oDlg ACTION u_validar(cPassW)

    @070,160 BUTTON "Cancelar" SIZE 025, 025 PIXEL OF oDlg ACTION (nOpca := 1, oDlg:End())

ACTIVATE MSDIALOG oDlg CENTER

return

user function validar(cPassW)

if ALLTRIM(cPassW) ==    'IOS2019'
    Alert('VOCE ESTA LOGADO')

else
    Alert('SENHA INCORRETA')
endif

return