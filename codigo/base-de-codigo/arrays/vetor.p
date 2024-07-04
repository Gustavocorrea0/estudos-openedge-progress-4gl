/*
    Arrays
    Colecao de elementos do mesmo tipo (INT, CHAR, DEC, etc)
    Existem dois tipos: unidimensional(vetor) ou bidimensional(matriz)
    bidimensional(matriz) nao e suportado nativamente
*/

// Vetor - DEF VAR arrayUnidimensional AS INT EXTENT <quantidade-de-elementos> NO-UNDO.
DEF VAR arrayUnidimensional AS INT EXTENT 10 NO-UNDO.

// Insercao no array - Individual (o Indice inicia em 1)
arrayUnidimensional[1] = 19.
arrayUnidimensional[2] = 10.
arrayUnidimensional[3] = 61.

// Insercao no array(vetor) - Utilizando Loop
DO i = 10 TO 10:
   arrayUnidimensional[i] = i * 10. 
END.

// Acesso ao array(vetor) - individual
DEF VAR valor AS INT NO-UNDO.
valor = arrayUnidimensional[1].
MESSAGE "O primeiro valor do array é" valor VIEW-AS ALERT-BOX INFO.

// Acesso ao array(vetor) - Utilizando loop
DEF VAR i AS INT NO-UNDO.
DO i = 1 TO 10:
    MESSAGE "Elemento" i "do array é" arrayUnidimensional[i] VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
END.