#include 'protheus.ch'
#Include 'FWEditPanel.ch'
#include 'FWMVCDef.ch'

user function projeto3()
local oBrowse := FWMBrowse():New() //Criar browse

oBrowse:SetAlias('ZA7') //PLAYLIST
oBrowse:SetMenuDef('projeto3')

oBrowse:Activate() // ativar o browse

Return

Static Function Menudef()

return  FWMVCMenu('projeto3') 


Static function ModelDef() //sempre staticfunction
local oModel := MPFormModel():New('ZA7MODEL')
local oStruZA7 := FWFormStruct(1,'ZA7') //cria estrutura
local oStruZA8 := FWFormStruct(1,'ZA8') //cria estrutura

oStruZA7:AddField('Carregar','Carregar' , 'LOAD', 'BT', 1, 0, { |oMdl| getDir(oMdl), .T. }, , {}, .F., , .F., .F., .F., , )
oStruZA8:AddField('Carregar','Carregar' , 'LOAD', 'BT', 11, 0, { |oMdl| getArq(oMdl), .T. }, , {}, .F.,FWBuildFeature( STRUCT_FEATURE_INIPAD, '"CGETFILE_1.BMP"');
 , .F., .F., .F., , )
oModel:AddFields('ZA7MASTER',/*Owner*/ ,oStruZA7,/**/,) // adiciona

oModel:AddGrid('ZA8DETAIL', 'ZA7MASTER', oStruZA8, ,)
oModel:SetRelation( 'ZA8DETAIL', { {'ZA8_FILIAL', "xFilial('ZA8')"},;
 {"ZA8_PLAY" , "ZA7_CODIGO"} }, ZA8->( IndexKey( 1 ) ) )

oModel:GetModel('ZA8DETAIL'):SetDescription('Musicas da playlist')
oModel:GetModel( 'ZA8DETAIL' ):SetUniqueLine( { 'ZA8_MUSICA' } )

Return oModel

Static Function ViewDef() //sempre static function
local oView := FWFormView():New() //objeto da view
local oStruct := FWFormStruct(2,'ZA7')
local oStructZA8 := FWFormStruct(2,'ZA8')
oView:SetModel(ModelDef()) // linka a view com o model

oStructZA8:AddField( 'LOAD','2','Carregar','Carregar',, 'BT' ,'@BMP',,,,,,,,,,, )

oStruct:RemoveField('ZA7_PATH')
oStructZA8:RemoveField('ZA8_FILIAL')
oStructZA8:RemoveField('ZA8_PLAY')
oStructZA8:RemoveField('ZA8_ALBUM')


oView:AddField('ZA7_VIEW', oStruct, 'ZA7MASTER')
oView:AddGrid('ZA8_VIEW', oStructZA8, 'ZA8DETAIL')

oView:CreateHorizontalBox('BOXZA7', 30)
oView:CreateHorizontalBox('BOXZA8', 70)


oView:SetOwnerView('ZA7_VIEW','BOXZA7') //colocar um componente no outro
oView:SetOwnerView('ZA8_VIEW','BOXZA8') //colocar um componente no outro  

oView:EnableTitleView('ZA8_VIEW')

Return oView


Static Function getArq(oMdl)
Local cArq := cGetFile( '*.mp3' , 'Musicas (MP3)', 1, 'C:\', .T.,,.T., .T. )
	
	If !Empty(cArq)
		oMdl:SetValue("ZA8_FILE",cArq)
	EndIf
	
Return 