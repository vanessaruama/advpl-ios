#include "protheus.ch"

/*Ler 3 valores (considere que não serão informados valores
iguais)e escrevê-los em ordem crescente.*/

user function desvio7()

local nValor1 := val(fwinputbox("Digite o primeiro numero"))
local nValor2 := val(fwinputbox("Digite o segundo numero"))
local nValor3 := val(fwinputbox("Digite o terceiro numero"))
local nmenor
local nmaior
local nmeio

if nValor1 > nValor2
    nmaior := nvalor1 
else 
    nmaior := nValor2
endif

if nmaior < nValor3
    nmaior := nValor3
endif


if nValor1 < nValor2
    nmenor := nvalor1 
else 
    nmenor := nValor2
endif

if nmenor > nValor3
    nmenor := nValor3
endif

do case

case nvalor1 <> nmaior .and. nvalor1 <> nmenor
    nmeio := nvalor1
case nvalor2 <> nmaior .and. nvalor2 <> nmenor
    nmeio := nvalor2
otherwise       
    nmeio := nvalor3
endcase  

alert("O maior numero é: " + cvaltochar(nmaior) + CRLF +;
"O numero do meio é: " + cvaltochar(nmeio) + CRLF +;
"O menor numero é: " + cvaltochar(nmenor))

return