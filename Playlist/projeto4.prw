 #include 'protheus.ch'
 #include 'fwmvcdef.ch'

user function projeto4() //ALBUM
local oBrowse := FWMBrowse():New() //Criar browse

oBrowse:SetAlias('ZA3')
oBrowse:SetMenuDef('projeto4') //nome da fonte

oBrowse:Activate() // ativar o browse

Return

Static Function Menudef()

Return FWMVCMenu('projeto4') //Menu padrão com C.R.U.D. //nome da fonte

Static function ModelDef() //sempre staticfunction
local oModel := MPFormModel():New('ZA3MODEL')
local oStruZA3 := FWFormStruct(1,'ZA3') //cria estrutura
local oStruZA4 := FWFormStruct(1,'ZA4') //cria estrutura
local oStruZA5 := FWFormStruct(1,'ZA5') //cria estrutura
oModel:AddFields('ZA3MASTER',/*Owner*/ ,oStruZA3,/**/,) // adiciona


oModel:AddGrid('ZA4DETAIL', 'ZA3MASTER', oStruZA4, , )
oModel:SetRelation( 'ZA4DETAIL', { {'ZA4_FILIAL', "xFilial('ZA4')"},;
 {"ZA4_ALBUM" , "ZA3_ALBUM"} }, ZA4->( IndexKey( 1 ) ) )

oModel:AddGrid('ZA5DETAIL', 'ZA3MASTER', oStruZA5, , )
oModel:SetRelation( 'ZA5DETAIL', { {'ZA5_FILIAL', "xFilial('ZA5')"},;
{"ZA5_ALBUM" , "ZA4_ALBUM"},{"ZA5_MUSICA" , "ZA4_MUSICA"} }, ZA5->( IndexKey( 1 ) ) )


oModel:GetModel('ZA3MASTER'):SetDescription('Album')
oModel:GetModel('ZA4DETAIL'):SetDescription('Musicas do album')
oModel:GetModel('ZA5DETAIL'):SetDescription('Autores/Interpretes')

Return oModel


Static Function ViewDef() //sempre static function
local oView := FWFormView():New() //objeto da view
local oStruct := FWFormStruct(2,'ZA3')
local oStructZA4 := FWFormStruct(2,'ZA4')
local oStructZA5 := FWFormStruct(2,'ZA5')
oView:SetModel(ModelDef()) // linka a view com o model


oView:AddField('ZA3_VIEW', oStruct, 'ZA3MASTER')
oView:AddGrid('ZA4_VIEW', oStructZA4, 'ZA4DETAIL')
oView:AddGrid('ZA5_VIEW', oStructZA5, 'ZA5DETAIL')


oView:CreateHorizontalBox('BOXZA3', 40)
oView:CreateHorizontalBox('BOXZA4', 30)
oView:CreateHorizontalBox('BOXZA5', 30)

oView:SetOwnerView('ZA3_VIEW','BOXZA3') //colocar um componente no outro
oView:SetOwnerView('ZA4_VIEW','BOXZA4') //colocar um componente no outro
oView:SetOwnerView('ZA5_VIEW','BOXZA5') //colocar um componente no outro


oView:EnableTitleView('ZA4_VIEW')
oView:EnableTitleView('ZA5_VIEW')


Return oView
