/*
    FUNCOES E PROCEDURES 
    Com parametros
*/

DEF VAR cNome AS CHAR NO-UNDO.
DEF VAR lResultado AS LOG INITIAL FALSE NO-UNDO.
DEF VAR cInpOut AS CHAR NO-UNDO.

ASSIGN cInpOut = "Parana".

RUN piMostrarMenssagem(INPUT 21,
                       INPUT "Terra Boa",
                       OUTPUT lResultado,
                       INPUT-OUTPUT cInpOut).
                       
MESSAGE "Processou a procedure: " + STRING(lResultado)
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.

RUN piMostrarMenssagem2.

PROCEDURE piMostrarMenssagem:

DEF INPUT PARAMETER iIdade AS INT FORMAT 99 NO-UNDO.
DEF INPUT PARAMETER cCidade AS CHAR NO-UNDO.
DEF OUTPUT PARAMETER lRetorno AS LOGICAL NO-UNDO.
DEF INPUT-OUTPUT PARAMETER cEstado AS CHAR FORMAT "X(20)" NO-UNDO.

    cNome = "Gustavo".
    MESSAGE "Nome: " cNome SKIP
            "Idade: " + STRING(iIdade) SKIP
            "Cidade: " + cCidade SKIP
            "Estado: " + cEstado
        VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
        
    ASSIGN lRetorno = TRUE.
    
END PROCEDURE.


PROCEDURE piMostrarMenssagem2:
    cNome = "Gustavo - Software Developer".

    MESSAGE cNome
        VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.

END PROCEDURE.
        