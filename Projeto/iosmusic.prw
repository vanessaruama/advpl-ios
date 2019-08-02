#include 'protheus.ch'

user function iossom()
local oBrowse := FWMBrowse():New() //Criar browse

oBrowse:SetAlias('ZA1')
oBrowse:SetMenuDef('iosmusic') //nome da fonte

oBrowse:Activate() // ativar o browse

Return

Static Function Menudef()

Return FWMVCMenu('iosmusic') //Menu padrão com C.R.U.D. //nome da fonte

Static function ModelDef() //sempre staticfunction
local oModel := MPFormModel():New('ZA1MODEL')
local oStruZA1 := FWFormStruct(1,'ZA1') //cria estrutura
local oStruZA2 := FWFormStruct(1,'ZA2') //cria estrutura
local bValid := {|oModelGrid| ValidAutor(oModelGrid)} //validacao da linha do grid
oModel:AddFields('ZA1MASTER',/*Owner*/ ,oStruZA1,/**/,) // adiciona
oModel:AddGrid('ZA2DETAIL', 'ZA1MASTER', oStruZA2, , bValid)
oModel:SetRelation('ZA2DETAIL', { {'ZA2_FILIAL', 'xFilial("ZA2")'} }, ZA2 -> ( IndexKey(1)))

oModel:GetModel('ZA1MASTER'):SetDescription('Dados da Musica')
oModel:GetModel('ZA2DETAIL'):SetDescription('Dados do Autor da Musica')

Return oModel


Static Function ViewDef() //sempre static function
local oView := FWFormView():New() //objeto da view
local oStruct := FWFormStruct(2,'ZA1')
local oStructZA2 := FWFormStruct(2,'ZA2')
oView:SetModel(ModelDef()) // linka a view com o model


oView:AddField('ZA1_VIEW', oStruct, 'ZA1MASTER')
oView:AddGrid('ZA2_VIEW', oStructZA2, 'ZA2DETAIL')
oView:AddIncrementField('ZA2_VIEW', 'ZA2_ITEM')

oView:CreateHorizontalBox('BOXZA1', 50)
oView:CreateHorizontalBox('BOXZA2', 50)

oView:SetOwnerView('ZA1_VIEW','BOXZA1') //colocar um componente no outro
oView:SetOwnerView('ZA2_VIEW','BOXZA2') //colocar um componente no outro

oView:EnableTitleView('ZA2_VIEW')

Return oView

Static function ValidAutor(oModelGrid)
local lRet := .F.
local cCodAutor := oModelGrid:GetValue('ZA2_AUTOR')
Local aArea := GetArea()
local dFalec := oModelField:GetValue('ZA0_DTAFAL')

DbSelectArea("ZA0") //Abre a tabela 
ZA0->(DbSetOrder('ZA2_AUTOR')) //define o indice que será utilizado filial+codigo

 //1) buscar o registro do autor na ZA0 que esta sendo inserido no grid
If ZA0->(DBSeek(xFilial("ZA0") + PADR(Upper(dFalec),TamSX3('ZA0_DTAFAL')[1] ) ))
 //2) pegar a data de falecimento

 //3) se a data nao estiver em branco, bloquear a inclusao exibindo msg de erro
 
    If ZA0->ZA0_DTAFAL = EMPTY(dFalec)  
    .F.    
    else 
        Help(, , "Texto do Help", , "Ele não pode estar aqui", 1, 0, , , , , , {"Digite um autor vivo"})
    EndIf
    
EndIf



Return lRet