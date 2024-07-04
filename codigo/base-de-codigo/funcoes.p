/*
    FUNCOES
    Bloco de codigos que executa tarefas especificas
    
    Estrutura de uma funcao:
    FUNCTION <nome-da-funcao> RETURNS <tipo-de-retorno> (<nome-parametros> AS <tipo-parametro>):
        <corpo-da-funcao>
        <declaracao-de-variaveis-locais>
        <logica-da-funcao>
        RETURN <valor-retorno>.
    END FUNCTION.
*/

FUNCTION calcular_quadrado RETURN INT(num_1 AS INT):
    DEF VAR resultado AS INT NO-UNDO.
    ASSIGN resultado = num_1 * num_1.
    RETURN resultado.
END FUNCTION.

FUNCTION somar_numeros RETURNS INT (num_1 AS INT, num_2 AS INT):
    DEF VAR resultado AS INT NO-UNDO.
    ASSIGN resultado = num_1 + num_2.
    RETURN resultado.
END FUNCTION.

// DECLARACAO
DEF VAR numero_1 AS INT NO-UNDO INITIAL 5.
DEF VAR numero_2 AS INT NO-UNDO INITIAL 2.

MESSAGE numero_1 " elevado ao quadrado é " calcular_quadrado(numero_1) VIEW-AS ALERT-BOX INFO.

MESSAGE "A soma de " numero_1 " + " numero_2 " é " somar_numeros(numero_1, numero_2) VIEW-AS ALERT-BOX INFO.