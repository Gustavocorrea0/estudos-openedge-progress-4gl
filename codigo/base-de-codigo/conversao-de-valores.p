/*
    Conversao de tipos
    Converter: <formato>(<variavel>)
    Exemplo: STRING(dCustos1)
*/

DEF VAR cNome1 AS CHAR LABEL "NOME:" NO-UNDO.
DEF VAR cNome2 AS CHAR LABEL "SOBRENOME:" NO-UNDO.
DEF VAR cData3 AS CHAR LABEL "DATA: " NO-UNDO.

DEF VAR iValor1 AS INT NO-UNDO.
DEF VAR iValor2 AS INT NO-UNDO.

DEF VAR dCustos1 AS DEC NO-UNDO.
DEF VAR dCustos2 AS DEC NO-UNDO.

DEFI VAR dData AS DATE INITIAL 01/01/2024 NO-UNDO.

cNome1 = "Gustavo".
cNome2 = "Alfredo".

cData3 = "04/07/2024".

iValor1 = 10.
iValor2 = 33.

dCustos1 = 10.
dCustos2 = 20.02.

DISPLAY 
    cNome1
    cNome2
    STRING(dCustos1) LABEL "CUSTOS"
    dCustos2
    DATE (cData3) LABEL "DATA"
    WITH 1 COL WIDTH 599.
    
    
// Conversao de valores
DEF VAR i_val AS DECIMAL NO-UNDO.
DEF VAR i_value AS DECIMAL NO-UNDO.
i_value = 10.5.

// Converter decimal para inteiro
// Igual ou acima de 10.5 conversao para 11
// Abaixo de 10.5 conversao para 10 
MESSAGE INT(i_value)
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    
// Converte o valor para string normalmente
MESSAGE STRING(i_value)
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    
// Soma depois converte o valor para string normalmente
MESSAGE STRING(i_value + 10)
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.    