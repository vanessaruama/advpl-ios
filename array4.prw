#include "protheus.ch"

/*Crie um array com três linhas. Em cada linha deve-se ter o nome do aluno e um
outro array, pra guardar 4 notas de prova. Popule o array inteiro. Exiba o nome e as
notas do segundo aluno.*/

user function array4()

local aAluno := Array(3)

aAluno[1] := {"Jessie", {10, 10, 10, 10} }
aAluno[2] := {"Troy", {8, 7, 8, 7}}
aAluno[3] := {"Chad", {7, 7, 8, 9}}

alert("Nome do aluno: " + aAluno[2][1] + CRLF +;
"Notas do aluno: " + cValtoChar(aAluno[2][2][1]) + ", " + cValtoChar(aAluno[2][2][2]) +;
", " + cValtoChar(aAluno[2][2][3]) + ", " + cValtoChar(aAluno[2][2][4]))

return