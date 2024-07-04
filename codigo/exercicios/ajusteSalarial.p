DEF VAR salarioSemReajuste AS DEC NO-UNDO.
DEF VAR percentualDeReajuste AS DEC NO-UNDO.
DEF VAR correcao AS DEC NO-UNDO.
DEF VAR salarioComReajuste AS DEC NO-UNDO.

DO WHILE TRUE:
    PROMPT-FOR salarioSemReajuste LABEL "Qual é o salario: " WITH FRAME f.
    ASSIGN salarioSemReajuste.

    IF salarioSemReajuste >= 0 THEN DO:
        LEAVE.
    END.
    ELSE DO:
        MESSAGE "O salario deve ser maior que 0" VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    END.
END.

PROMPT-FOR percentualDeReajuste LABEL "Qual é o percentual de reajuste: " WITH FRAME g.
ASSIGN percentualDeReajuste.

correcao = (salarioSemReajuste * percentualDeReajuste) / 100.
salarioComReajuste = salarioSemReajuste + correcao.

// "~n" - serve para quebrar linha
MESSAGE "Salario: R$" salarioSemReajuste
        "~nPercentual de Reajuste: " percentualDeReajuste
        "~nValor do reajuste: R$" correcao
        "~nSalario Reajustado: R$" salarioComReajuste
        VIEW-AS ALERT-BOX INFO BUTTONS OK.