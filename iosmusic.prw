#include 'protheus.ch'

user function iosmusic()
local oBrowse := FWMBrowse():New() //Criar browse

oBrowse:SetAlias('ZA1')
oBrowse:SetMenuDef('iosmusic')

oBrowse:Activate() // ativar o browse

Return

Static Function Menudef()

Return FWMVCMenu('iosmusic') //Menu padrão com C.R.U.D.

Static function ModelDef() //sempre staticfunction
local oModel := MPFormModel():New('ZA1MODEL')
local oStruZA1 := FWFormStruct(1,'ZA1') //cria estrutura

oModel:AddFields('ZA1MASTER',/*Owner*/ ,oStruZA1,/**/,) // adiciona

Return oModel

Static Function ViewDef() //sempre static function
local oView := FWFormView():New() //objeto da view
local oStruct := FWFormStruct(2,'ZA1')
oView:SetModel(ModelDef()) // linka a view com o model

oView:AddField('ZA1_VIEW', oStruct, 'ZA1MASTER')
oView:CreateHorizontalBox('BOXZA1', 100)
oView:SetOwnerView('ZA1_VIEW','BOXZA1') //colocar um componente no outro

Return oView