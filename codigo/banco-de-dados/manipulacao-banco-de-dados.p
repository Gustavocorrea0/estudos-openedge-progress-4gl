// Listar itens do banco
// NO-LOCK = Não permite alteracao dos dados
FOR EACH nomeTabela NO-LOCK WHERE nomeTabela.nomeCampo = "o que é buscado":
END.

// Listagem geral
FOR EACH nomeTabela NO-LOCK:
    DISPLAY nomeTabela.Name.
END.

// Listagem de um unico item
FOR EACH nomeTabela NO-LOCK WHERE nomeTabela.Campo = 'nome-buscado':
    DISPLAY nomeTabela.Campo.
END.

// Uso real
FOR EACH Customer NO-LOCK WHERE Customer.NAME = 'Lift touns':
    DISPLAY Customer.Name.
END.

FOR EACH Customer NO-LOCK:
    DISPLAY Customer.Name.
END. 