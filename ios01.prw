#include 'protheus.ch'

user function autor()
local oBrowse := FWMBrowse():New()

oBrowse:SetAlias('ZA0')
oBrowse:SetMenuDef('ios01')

oBrowse:Activate()

Return

Static Function Menudef()

Return FWMVCMenu('ios01') //Menu padrão com C.R.U.D.



