/*
   IF - THEN
   Executa um bloco de codigo se a condicao for verdadeira
   Documentacao: https://documentation.progress.com/output/ua/OpenEdge_latest/pdsoe/PLUGINS_ROOT/com.openedge.pdt.langref.help/rfi1424920642382.html
*/ 

DEF VAR idade AS INT NO-UNDO.
idade = 20.
IF idade >= 18 THEN
    MESSAGE "Maior de Idade"
        VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    
/*
    IF - THEN - ELSE 
    Executa um bloco de codigo se uma codicao for verdadeira
    e outra se a condicao for false
*/
IF idade >= 18 THEN
    MESSAGE "Maior de Idade"
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
ELSE
    MESSAGE "Maior de Idade"
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.   
/*
    CASE
    Teste de varias condicoes e execucao de diferentes blocos
    de codigo
*/
DEF VAR dia_da_semana AS CHAR NO-UNDO.
dia_da_semana = "Sexta-feira".

CASE dia_da_semana:
    WHEN "Segunda-feira" THEN
        MESSAGE "Hoje é segunda-feira" VIEW-AS ALERT-BOX INFO.
    WHEN "Terca-feira" THEN
        MESSAGE "Hoje é terça-feira" VIEW-AS ALERT-BOX INFO.
    WHEN "Quarta-feira" THEN
        MESSAGE "Hoje é quarta-feira" VIEW-AS ALERT-BOX INFO.
    WHEN "Quinta-feira" THEN
        MESSAGE "Hoje é quinta-feira" VIEW-AS ALERT-BOX INFO.
    WHEN "Sexta-feira" THEN
        MESSAGE "Hoje é sexta-feira" VIEW-AS ALERT-BOX INFO.
    OTHERWISE
        MESSAGE "Fim de semana" VIEW-AS ALERT-BOX INFO.
END CASE.

/*
    OR
    Retorna um bloco de codigo para situacoes onde ocorre a selecao
    de uma informacao OU outra(s).
    Nao e possivel utilizar em um CASE
*/
IF dia_da_semana = "Sabado" OR dia_da_semana = "Domingo" THEN
   MESSAGE "Fim de Semana"
        VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.

/*
    CHR(13) - quebrar linha
*/
MESSAGE "Usuario: " + i_nome + CHR(13) + "Pode votar: " + STRING(i_votar) 
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.        