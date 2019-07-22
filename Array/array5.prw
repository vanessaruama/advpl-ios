#include "protheus.ch"

/*Crie um array para guardar o nome dos alunos dessa sala, usando o aAdd adicione o
nome de 10 alunos. Depois disso, exclua 5 alunos do array usando a função aDel e use
a função aSize pra redimensionar o tamanho de forma a não sobrar nenhuma posição
com o conteúdo NIL.*/

user function array5()

local aAluno := {}

aAdd(aAluno ,"Vanessa")
aAdd(aAluno ,"José")
aAdd(aAluno ,"Luana")
aAdd(aAluno ,"Atila")
aAdd(aAluno ,"Valeria")
aAdd(aAluno ,"Sabrina")
aAdd(aAluno ,"Jessie")
aAdd(aAluno ,"Ana")
aAdd(aAluno ,"Renata")
aAdd(aAluno ,"Yasmin")

alert("Tamanho: " + cvaltochar(Len(aAluno)))

aDel(aAluno, 5)

aSize(aAluno, 5)

alert("Tamanho: " + cvaltochar(Len(aAluno)))

return