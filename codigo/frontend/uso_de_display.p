// Apresenta itens lado a lado
FOR EACH Customer NO-LOCK:
    DISPLAY Customer.State
            Customer.CustNum
            Customer.Name.
END.

// Listagem geral de um dado
// Tudo que esta depois do EXCEPT nao e apresentado
FOR EACH Customer NO-LOCK:
    DISPLAY Customer EXCEPT Customer.Comments .
END.

// WIDTH 599 é o tamanho maximo do display
FOR EACH Customer NO-LOCK:
    DISPLAY Customer EXCEPT Customer.Comments WITH WIDTH 599.
END.

// STREAM-IO faz uma formatacao dos elementos
FOR EACH Customer NO-LOCK:
    DISPLAY Customer EXCEPT Customer.Comments WITH STREAM-IO WIDTH 599.
END.

// Remocao de alguns dados para formatacao
FOR EACH Customer NO-LOCK:
    DISPLAY Customer EXCEPT 
    Customer.Comments 
    Customer.Fax
    Customer.EmailAddress
    WITH STREAM-IO WIDTH 599.
END.

// CURRENT-WINDOW Melhora a vizualizacao da tela
CURRENT-WINDOW:WIDTH = 200.

FOR EACH Customer NO-LOCK:
    DISPLAY Customer EXCEPT 
    Customer.Comments 
    Customer.Fax
    Customer.EmailAddress
    WITH STREAM-IO WIDTH 599.
END.

// Apresentar uma coluna por vez
CURRENT-WINDOW:WIDTH = 200.
FOR EACH Customer NO-LOCK:
    DISPLAY Customer WITH 1 COL WIDTH 599.
END.