DEF VAR numero AS INT INITIAL 0 NO-UNDO.
DEF VAR numeroUsuario AS INT NO-UNDO.
DEF VAR i AS INT NO-UNDO.

DEF VAR numerosRecebidos AS INT EXTENT 0 INITIAL [] NO-UNDO

DO WHILE TRUE:
    PROMPT-FOR numeroUsuario LABEL "Digite um número: " WITH FRAME f.
    numerosRecebidos[numero] = numeroUsuario.
END.