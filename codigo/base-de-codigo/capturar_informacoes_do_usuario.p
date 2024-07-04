/*
    UPDATE
    Recebe entrada do usuario e armazenar em uma variavel
*/
DEF VAR nome_usuario AS CHAR NO-UNDO.
UPDATE nome_usuario LABEL "Digite um texto: ".
MESSAGE "Você digitou: " nome_usuario VIEW-AS ALERT-BOX INFO BUTTONS OK.

/*
    PROMPT-FOR
    Recebe a entrada do usuario, mas permite um pouco mais de controle visual
*/
DEF VAR userInput AS CHAR NO-UNDO.

PROMPT-FOR userInput LABEL "Digite um texto: " WITH FRAME f.
ASSIGN userInput.
MESSAGE "Você digitou: " userInput VIEW-AS ALERT-BOX INFO BUTTONS OK.

/*
    TRATAMENTO DE ERROS NA INSERCAO
    Garante que o usuario nao digite um valor vazio
*/
DEF VAR texto_usuario AS CHAR NO-UNDO.

DO ON ERROR UNDO, LEAVE:
    PROMPT-FOR texto_usuario LABEL "Digite um texto: " WITH FRAME f.
    ASSIGN texto_usuario.
    
    // Verifica se o usuario digitou algo 
    IF texto_usuario = "" THEN
        MESSAGE "Nenhum texto digitado" VIEW-AS ALERT-BOX ERROR BUTTONS OK.
    ELSE
        MESSAGE "Você digitou: " texto_usuario VIEW-AS ALERT-BOX INFO BUTTONS OK.
END.