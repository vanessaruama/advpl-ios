#include 'protheus.ch'

user function ios01()
local oBrowse := FWMBrowse():New() //Criar browse

oBrowse:SetAlias('ZA0')
/*'oBrowse:SetMenuDef('ios01')*/

oBrowse:Activate() // ativar o browse

Return

Static Function Menudef()

Return FWMVCMenu('ios01') //Menu padr�o com C.R.U.D.

Static function ModelDef()
local oModel := MPFormModel():New('ZA0MODEL')
local oStruZA0 := FWFormStruct(1,'ZA0')
local bPos := {|oModelField| PosVldAutor(oModelField) }

oModel:AddFields('ZA0MASTER',/*Owner*/ ,oStruZA0,/**/, bPos)

Return oModel

Static Function PosVldAutor(oModelField)
local lTudoOk := .T.
local dFalec := oModelField:GetValue('ZA0_DTAFAL') //Valida��o da Data
local cNome := oModelField:GetValue('ZA0_NOME') // Valida��o do Nome

If dFalec > Date() //Condi��o para a valida��o da Data 
    lTudoOk := .F.
    Help(, , "Texto do Help", , "N�o adivinhe o futuro", 1, 0, , , , , , {"Digite uma data valida de falecimento"})

ElseIf 'RICARDO' $ UPPER(cNome) .Or. Empty(cNome) //Condi��o para a valida��o do Nome
    lTudoOk := .F.
    Help(, , "Texto do Help", , "Ele n�o pode estar aqui", 1, 0, , , , , , {"Digite um nome valido"})
EndIf    

return lTudoOk


Static Function ViewDef()
local oView := FWFormView():New()
local oStruct := FWFormStruct(2,'ZA0')
oView:SetModel(ModelDef())

oView:AddField('ZA0_VIEW', oStruct, 'ZA0MASTER')
oView:CreateHorizontalBox('BOXZA0', 100)
oView:SetOwnerView('ZA0_VIEW','BOXZA0')

Return oView


