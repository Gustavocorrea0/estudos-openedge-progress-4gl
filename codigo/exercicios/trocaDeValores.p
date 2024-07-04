DEF VAR valor1 AS INT NO-UNDO.
DEF VAR valor2 AS INT NO-UNDO.

PROMPT-FOR valor1 LABEL "Digite o primeiro numero: " WITH FRAME f.
ASSIGN valor1.

PROMPT-FOR valor2 LABEL "Digite o segundo numero: " WITH FRAME g.
ASSIGN valor2.

MESSAGE "Geral | 1º Valor = " valor1 "2º Valor: " valor2.

DEF VAR valor3 AS INT NO-UNDO.
valor3 = valor1.
valor1 = valor2.
valor2 = valor3.

MESSAGE "Trocados | 1º Valor = " valor1 " 2º Valor: " valor2.