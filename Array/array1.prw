#include "protheus.ch"

/*Criar um array para guardar o nome de 5 alunos, os nomes dever�o ser colocados no
array depois da declara��o do mesmo, inserindo um valor de cada vez. Exiba o nome
do terceiro aluno.*/

user function array1()

local aAluno := {}

aAdd(aAluno, {"Vanessa"})
aAdd(aAluno, {"Jos�"})
aAdd(aAluno, {"Francielly"})
aAdd(aAluno, {"Leonardo"})
aAdd(aAluno, {"Mayner"})

alert("Nome do aluno: " + aAluno[3][1])

return
