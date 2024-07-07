/*
    Operadores Logicos
    Filtragem e Listagem de dados
    Tipos de Operadores
    > "EQ" ou "=" - Igual
    > "GE" ou ">=" - Maior Igual
    > "GT" ou "<=" - Menor Igual
    > "LT" ou "<" - Menor
    > "LE" ou ">" - Maior
    > "NE" ou "<>" - Diferente

    Documentacao OPL = https://documentation.progress.com/output/ua/OpenEdge_latest/pdsoe/PLUGINS_ROOT/com.openedge.pdt.langref.help/rfi1424919509131.html
*/

// Exemplo 1 - Uso EQ ou =
PROMPT-FOR Order.SalesRep WITH SIDE-LABELS CENTERED.

FOR EACH Order NO-LOCK WHERE Order.SalesRep EQ INPUT Order.SalesRep:
    DISPLAY Order.SalesRep
            Order.OrderNum
            Order.CustNum
            Order.OrderDate
            Order.PromiseDate
            Order.ShipDate
     WITH CENTERED WIDTH 599.
END.

// Exemplo 2 - Uso GE ou >=
FOR EACH Item NO-LOCK WHERE Item.Onhand GE 13022:
    DISPLAY Item.ItemNum
            Item.ItemName
            Item.OnHand.
END.


// Exemplo 3 - Uso GT ou <=
FOR EACH Item NO-LOCK WHERE Item.Onhand GT 13022:
    DISPLAY Item.ItemNum
            Item.ItemName
            Item.OnHand.
END.


// Exemplo 4 - Uso LT ou <
FOR EACH Item NO-LOCK WHERE Item.Onhand LT 13022:
    DISPLAY Item.ItemNum
            Item.ItemName
            Item.OnHand.
END.

// Exemplo 5 - Uso LE ou >
FOR EACH Item NO-LOCK WHERE Item.Onhand LE 13022:
    DISPLAY Item.ItemNum
            Item.ItemName
            Item.OnHand.
END.


// Exemplo 6 - Uso NE ou <>
FOR EACH Item NO-LOCK WHERE Item.Onhand NE 13022:
    DISPLAY Item.ItemNum
            Item.ItemName
            Item.OnHand.
END














