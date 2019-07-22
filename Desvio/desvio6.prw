#include "protheus.ch"

/*Ler 3 valores (considere que não serão informados valores
iguais) e escrever a soma dos 2 maiores.*/

user function desvio 6()

nvalor1 := val(fwinputbox("Digite o primeiro numero"))
nvalor2 := val(fwinputbox("Digite o segundo numero"))
nvalor3 := val(fwinputbox("Digite o terceiro numero"))

do case

case (nvalor1 > nvalor2 .and. nvalor2 > nvalor3) .or. (nvalor1 < nvalor2 .and. nvalor1 > nvalor3)
    alert(cvaltochar(nvalor1 + nvalor2))

case (nvalor2 > nvalor1 .and. nvalor2 < nvalor3) .or. (nvalor2 < nvalor3 .and. nvalor2 > nvalor1)
    alert(cvaltochar(nvalor2+ nvalor3))

otherwise
    alert(cvaltochar(nvalor1 + nvalor3)) 

endcase

return