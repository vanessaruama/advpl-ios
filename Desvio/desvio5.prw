#include "protheus.ch"

/*Ler 3 valores (considere que não serão informados valores
iguais)e escrever o maior deles.*/

user function desvio5()

nValor1 := val(fwinputbox("Digite o primeiro numero"))
nValor2 := val(fwinputbox("Digite o segundo numero"))
nValor3 := val(fwinputbox("Digite o terceiro numero"))

do case
case nvalor1 > nvalor2 .and. nvalor1 > nValor3
    alert(nvalor1)

case nvalor2 > nvalor1 .and. nvalor2 > nValor3
    alert(nvalor2)

otherwise 
    alert(nvalor3)

 endcase

 return   