/*
    BLOCK-LEVEL ON ERROR
    Utilizado para capturar erros dentro de um bloco especifico de codigos
    Caso ocorra um erro o bloco e desfeito e o erro e lancado
*/

DO ON ERROR UNDO, THROW:

    DEF VAR num_1 AS INT NO-UNDO.
    DEF VAR num_2 AS INT NO-UNDO.
    DEF VAR resultado AS INT NO-UNDO.
    ASSIGN num_1 = 10.
    ASSIGN num_2 = 0.
    
    resultado = num_1 / num_2. /* Isso causará um erro de divisão por zero */
    
    MESSAGE resultado.
END.

/*
    CATCH
    Utilizado para capturar excecoes e trata-las adequadamente
    As excecoes podem ser lancadas manualmente usando o comando THROW
*/

DO ON ERROR UNDO, THROW:
    DEF VAR num_1 AS INT NO-UNDO.
    DEF VAR num_2 AS INT NO-UNDO.
    DEF VAR resultado AS INT NO-UNDO.
    
    ASSIGN num_1 = 10.
    ASSIGN num_2 = 0.
    
    CATCH e AS PROGRESS.Lang.SysError:
        MESSAGE "Erro tipo: " e:GetMessage() VIEW-AS ALERT-BOX ERROR.
    END CATCH.
    
    resultado = num_1 / num_2.
END.

/*
    TRATAMENTO DE ERROS COM PROCEDIMENTOS
    Pode-se definir procedimentos para tratar erros
*/
PROCEDURE dividir:
    DEF INPUT PARAMETER num_1 AS INT NO-UNDO.
    DEF INPUT PARAMETER num_2 AS INT NO-UNDO.
    DEF OUTPUT PARAMETER resultado AS INTEGER NO-UNDO.
    
    DEF VAR erro AS LOGICAL NO-UNDO.
    
    DO ON ERROR UNDO, THROW:
        IF num_2 = 0 THEN
            DO:
                ASSIGN erro = TRUE.
                RETURN ERROR.
            END.
         resultado = num_1 / num_2.
    END.
    
    IF erro THEN
        MESSAGE "Erro: divisao por zero" VIEW-AS ALERT-BOX ERROR.
    ELSE
        MESSAGE "O resultado é " resultado VIEW-AS ALERT-BOX.
END PROCEDURE.

// CHAMADA DO PROCEDIMENTO
DEF VAR res AS INT NO-UNDO.
RUN dividir(10, 0, OUTPUT res).