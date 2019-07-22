#include "protheus.ch"

/*Criar um array sem tamanho definido e utilizar a função aAdd para adicionar 5
alunos no array, sendo que cada aluno deve ter nome, media, idade e profissão. Exiba
os dados do quinto aluno.*/

user function array3()

local aAluno := {}

aAdd(aAluno, {"Amarelo", 7, 87, "programador de cobol"})
aAdd(aAluno, {"Lucas", 8, 32, "jogador de cs"})
aAdd(aAluno, {"Vanessa", 9, 22, "programadora"})
aAdd(aAluno, {"Azulzinho", 6, 19, "analista de sistemas jr."})
aAdd(aAluno, {"Rosa", 10, 20, "modelo"})

alert("Nome do aluno: " + aAluno[5][1] + CRLF +;
"Média: " + cValtoChar(aAluno[5][2]) + CRLF +;
"Idade: " + cValtoChar(aAluno[5][3]) + CRLF +;
"Profissão: " + aAluno[5][4])


return
 


