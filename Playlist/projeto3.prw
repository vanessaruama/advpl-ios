#include 'protheus.ch'

user function projeto3()
local oBrowse := FWMBrowse():New() //Criar browse

oBrowse:SetAlias('ZA7')
oBrowse:SetMenuDef('projeto3')

oBrowse:Activate() // ativar o browse

Return

Static Function Menudef()

Return FWMVCMenu('projeto3') //Menu padrão com C.R.U.D.

Static function ModelDef() //sempre staticfunction
local oModel := MPFormModel():New('ZA7MODEL')
local oStruZA7 := FWFormStruct(1,'ZA7') //cria estrutura
local oStruZA8 := FWFormStruct(1,'ZA8') //cria estrutura
local bPos := {|oModelField| PosVldAutor(oModelField) }

oModel:AddFields('ZA7MASTER',/*Owner*/ ,oStruZA7,/**/,) // adiciona

oModel:AddGrid('ZA8DETAIL', 'ZA7MASTER', oStruZA8, ,)
oModel:SetRelation( 'ZA8DETAIL', { {'ZA8_FILIAL', "xFilial('ZA8')"},;
 {"ZA8_PLAY" , "ZA7_CODIGO"} }, ZA8->( IndexKey( 1 ) ) )

oModel:GetModel('ZA8DETAIL'):SetDescription('Musicas da playlist')

Return oModel

Static Function ViewDef() //sempre static function
local oView := FWFormView():New() //objeto da view
local oStruct := FWFormStruct(2,'ZA7')
local oStructZA8 := FWFormStruct(2,'ZA8')
oView:SetModel(ModelDef()) // linka a view com o model

oView:AddField('ZA7_VIEW', oStruct, 'ZA7MASTER')

oView:CreateHorizontalBox('BOXZA7', 50)

oView:SetOwnerView('ZA7_VIEW','BOXZA7') //colocar um componente no outro


Return oView


