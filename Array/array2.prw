#include "protheus.ch"

user function array2()

local aAluno := Array(3,2)

/*Criar um array de 3 linhas e 2 colunas, cada linha deve guardar o nome de um aluno
e a idade do mesmo. Exiba os dados do segundo aluno.*/

aAluno[1] := {"Vanessa", 22}
aAluno[2] := {"Troy", 23}
aAluno[3] := {"Sharpay", 24}

alert("Nome do aluno: " + aAluno[2][1] + CRLF +;
"Idade do aluno: " + (cValtoChar(aAluno[2][2])))

return