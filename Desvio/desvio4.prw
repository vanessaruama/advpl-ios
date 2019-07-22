#include "protheus.ch"

/*Faça um algoritmo para ler: a descrição do produto (nome), a
quantidade adquirida e o preço unitário. Calcular e escrever o
total (total = quantidade adquirida * preço unitário), o desconto
e o total a pagar (total a pagar = total - desconto), sabendo-se
que:
- Se quantidade menor ou igual 5 o desconto será de 2%
- Se quantidade maior que 5 e quantidade menor ou igual a 10
o desconto será de 3%
- Se quantidade maior que 10 o desconto será de 5%*/

user function desvio4()
local cproduto := (fwinputbox("Digite o nome do produto"))
local nCaneta := 0.50
local nquant := val(fwinputbox("Quantidade do produto"))
local ntotal := nquant * nCaneta
local ndesc1 := 0.50 * 0.02
local ndesc2 := 0.50 * 0.03
local ndesc3 := 0.50 * 0.05
local npagar1 := ntotal - ndesc1
local npagar2 := ntotal - ndesc2
local npagar3 := ntotal - ndesc3


if nquant <=5
    Alert(npagar1)

elseif nquant > 5 .and. nquant < 10
    Alert(npagar2)

else
    Alert(npagar3)    

endif

return