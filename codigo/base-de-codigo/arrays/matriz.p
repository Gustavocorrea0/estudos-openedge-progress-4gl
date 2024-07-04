/*
    Arrays(MATRIZ é Pouco utilizado)
    Colecao de elementos do mesmo tipo (INT, CHAR, DEC, etc)
    Existem dois tipos: unidimensional(vetor) ou bidimensional(matriz)
    bidimensional(matriz) nao e suportado nativamente
*/

// Matriz
DEF VAR arrayBidimensional AS INT EXTENT 12 NO-UNDO. /*3 linhas x 4 colunas*/
// Insercao no array - Individual (o Indice inicia em 1)
arrayBidimensional[(1 + 1) * 4 + 1] = 10.
// (i - 1): Ajusta o índice da linha para começar em 0.
// * 4: Multiplica o índice da linha ajustado pelo número de colunas, criando uma "base" para a linha
// + j: Adiciona o índice da coluna para encontrar a posição correta dentro da linha "base".
               
// Insercao no array - Com loop
DEF VAR i AS INT NO-UNDO.
DEF VAR j AS INT NO-UNDO.

DO i = 1 TO 3:
    DO j = 1 TO 4:
        MESSAGE "Elemento [" i ", " j "] do array: " arrayBidimensional[(i - 1) * 4 + j] VIEW-AS ALERT-BOX INFO.
    END.
END.

// Acesso ao array(matriz) - individual
DEF VAR valor AS INT NO-UNDO.





