/*
    DO
    Laço basico que pode ser usado com ou sem condicao.
    LEAVE para sair do laço.
    NEXT para pular para a proxima interacao. 
*/
DEF VAR i AS INT NO-UNDO.
DO i = 1 TO 5:
    MESSAGE "Valor de i:" i VIEW-AS ALERT-BOX INFO.
END.

/*
    REPEAT
    Laço que continua o teste ate que uma condicao seja valida
    Pode ser controlado por LEAVE e NEXT tambem
*/
DEF VAR a AS INT NO-UNDO.
a = 1.
REPEAT WHILE a <= 5:
    MESSAGE "Valor de a:" a VIEW-AS ALERT-BOX INFO.
    a = a + 1.
END.

/*
    FOR EACH
    Utilizado para interar com registro de uma tabela do banco de dados
*/
FOR EACH Customer:
    DISPLAY Customer.Name. 
END.

/*
    WHILE
    Executa um bloco de codigo enquanto uma condicao especifica for verdadeira
*/
DEF VAR a AS INT NO-UNDO.
a = 1.

WHILE a <= 5 DO:
    MESSAGE "Valor de i:" a VIEW-AS ALERT-BOX INFO.
    a = a + 1.
END WHILE.

/*
    DO WHILE
    Bloco de codigo e executado enquanto a condicao for verdadeira
*/
DEF VAR c AS INT NO-UNDO.
c = 1.
DO WHILE c <= 5:
    MESSAGE "Valor de c:" c VIEW-AS ALERT-BOX INFO.
    c = c + 1.
END.

/*
    DO WITH
    Bloco de codigo e executado um numero especifico de vezes
    LEAVE e NEXT podem ser usados para controlar o laco
*/
DEF VAR g AS INTEGER NO-UNDO.
g = 1.
DO WITH g = 1 TO 5:
    MESSAGE "Valor de g:" g VIEW-AS ALERT-BOX INFO.
END.

