// Documentacao: https://documentation.progress.com/output/ua/OpenEdge_latest/pdsoe/PLUGINS_ROOT/com.openedge.pdt.langref.help/rfi1424919813003.html
// Ajuda com Progress4GL: https://riptutorial.com/progress-4gl

/*
    FOR
    FOR EACH - Busca todos os dados
    FOR FIRST - Busca o primeiro dado
    FOR LAST - Busca o ultimo dado
*/

// Sempre utilizar NO-LOCK
// Ordenando em ordem comum
FOR EACH Customer NO-LOCK BY Customer.CustNum:
    DISPLAY Customer.CustNum
            Customer.Country
            Customer.PostalCode
            Customer.SalesRep
            Customer.Name
            Customer.State
            WITH WIDTH 599.
END.

// Ordenando em ordem inversa
FOR EACH Customer NO-LOCK BY Customer.CustNum DESC:
    DISPLAY Customer.CustNum
            Customer.Country
            Customer.PostalCode
            Customer.SalesRep
            Customer.Name
            Customer.State
            WITH WIDTH 599.
END.