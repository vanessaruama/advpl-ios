#include "protheus.ch"

/*Ler o nome de 2 times e o número de gols marcados na partida
(para cada time). Escrever o nome do vencedor. Caso não haja
vencedor deverá ser impressa a palavra EMPATE.*/

user function desvio8

local ctime := fwinputbox("Digite o nome do primeiro time: ")
local ngols := fwinputbox(cValtoChar("Numero de gols marcados pelo primeiro time: "))
local ctime2 := fwinputbox("Digite o nome do segundo time: ")
local ngols2 := fwinputbox(cValtoChar("Numero de gols marcados pelo segundo time: "))
local nmaior
do case
case ngols > ngols2
    nmaior := ngols
    alert("O time vencedor é o: " + ctime)

case ngols2 > ngols
    nmaior := ngols2
    alert("O time vencedor é o: " + ctime2)

otherwise 
    alert("Tivemos um empate")

endcase

return