// DOCUMENTACAO: https://documentation.progress.com/output/ua/OpenEdge_latest/pdsoe/PLUGINS_ROOT/com.openedge.pdt.langref.help/rfi1424920257320.html

// Formato comum
MESSAGE "Gustavo".

// Formato caixa
MESSAGE "Gustavo" VIEW-AS ALERT-BOX.

// Mensagem error
MESSAGE "Gustavo" VIEW-AS ALERT-BOX ERROR.

// Mensagem Warning
MESSAGE "Gustavo" VIEW-AS ALERT-BOX WARNING.

// Exemplo de uso - 1

MESSAGE "Confirmar remoção do registro"
VIEW-AS ALERT-BOX QUESTION BUTTONS YES-NO-CANCEL
TITLE "APAGAR ?" UPDATE lEscolha AS LOGICAL.
DISPLAY lEscolha.


// Exemplo de uso - 2
MESSAGE "Confirmar remoção do registro"
VIEW-AS ALERT-BOX QUESTION BUTTONS YES-NO-CANCEL
TITLE "APAGAR ?" UPDATE lEscolha AS LOGICAL.

IF lEscolha = YES THEN
DO:
    MESSAGE "Registro Apagado !" VIEW-AS ALERT-BOX INFORMATION BUTTONS OK. 
END. ELSE DO:
    IF lEscolha = ? THEN
    DO:
      MESSAGE "Cancelado !" VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.  
    END. ELSE DO:
      MESSAGE "Registro não Apagado !" VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    END.
END.

// Exemplo de uso - 2
FOR EACH Customer NO-LOCK:
    MESSAGE "State: " Customer.State SKIP
            "CustNum: " Customer.CustNum SKIP
            "Name: " Customer.Name
            VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
END.