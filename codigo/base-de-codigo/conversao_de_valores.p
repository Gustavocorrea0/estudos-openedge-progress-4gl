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