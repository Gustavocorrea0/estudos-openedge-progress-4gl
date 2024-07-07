/*
TIPOS DE VARIAVEIS
INTEGER - INT - INTEIRO
DECIMAL - DEC - DECIMAL
LOGICAL - LOG - BOOLEAN
CHARACTER - CHAR - STRING
DATE - DATE - DATA
DATETIME - DATETIME - DATA E HORA
DATETIME-TZ - DATA E HORA COM TIMEZONE

Documentação tipos de dados: https://documentation.progress.com/output/ua/OpenEdge_latest/pdsoe/PLUGINS_ROOT/com.openedge.pdt.langref.help/rfi1424920636568.html
*/

// DECLARACAO

// String sem valor inicial
DEF VAR nome_sem_valor_inicial AS CHARACTER NO-UNDO.
// String com valor inicial
DEF VAR nome_com_valor_inicial AS CHARACTER NO-UNDO INITIAL "Gustavo".

// Inteiro sem valor incial
DEF VAR numero_sem_valor_inicial AS INT NO-UNDO.
// Inteiro com valor incial
DEF VAR numero_com_valor_inicial AS INT NO-UNDO INITIAL 21.

// Decimal sem valor inicial
DEF VAR salario_sem_valor_incial AS DEC NO-UNDO.
// Decimal com valor inicial
DEF VAR salario_com_valor_inicial AS DEC NO-UNDO INITIAL 2500.00.

// Logico(Boolean) sem valor inicial | False por padrao
DEF VAR logico_sem_valor_inicial AS LOG NO-UNDO.
// Logico(Boolean) com valor inicial
DEF VAR logico_com_valor_inicial AS LOG NO-UNDO INITIAL TRUE.

// Data
DEF VAR data_com_valor_inicial AS DATE NO-UNDO INITIAL TODAY.

// Data e hora
DEF VAR data_e_hora_com_valor_inicial AS DATETIME NO-UNDO INITIAL NOW.

// Data, hora e timezone
DEF VAR data_hora_e_timezone AS DATETIME-TZ NO-UNDO INITIAL NOW.
// ROWID - Identificador exclusivo que referencia um registro especifico
// ROWID padrao
DEF VAR row_id_cliente AS ROWID NO-UNDO.

/* 
HANDLE - serve como um identificador para referenciar objetos dinâmicos
e outros recursos do ambiente ABL, permitindo a interacao de maneira mais
flexivel e dinaminca
*/
// HANDLE padrao
DEF VAR h_buffer AS HANDLE NO-UNDO.

/*
BLOB(Binary Large Object) - armazena grandes quantidades de dados binários
como imagens, documentos, arquivos de audi e video.
*/
// BLOB padrao
DEF VAR imagem_produto AS BLOB NO-UNDO.

/*
CLOB - armazena grandes quantidade de dados textuais, que ultrapassam os
limites das variaveis do tipo CHARACTER ou VARCHAR
*/
// CLOB padrao
DEF VAR descricao_longa AS CLOB NO-UNDO.


// LISTA
DEF VAR lista_nomes AS CHAR EXTENT 5 NO-UNDO.

// Variaveis extensas(Array) - Usa-se EXTENT
DEF VAR notas AS DECIMAL EXTENT 5 NO-UNDO INITIAL [9.5, 7.5, 8.9, 10.0, 6.7].

// Variaveis temporarias(Temp-Tables)
// TEMP-TABLES - estruturas temporarias de dados em memória usadas para armazenar e manipular conjuntos de registros
DEF TEMP-TABLE tt_cliente
    FIELD cliente_id AS INTEGER
    FIELD nome AS CHAR
    FIELD idade AS INTEGER.

// Variaveis de buffer
// BUFFER - utilizados para manipular registros de uma tabela
DEF BUFFER buffer_cliente FOR cliente.

// Variaveis dinamicas - utilizadas para criar buffers e queries que podem ser manipulados em tempo de execução  
DEF VAR dyn_buffer AS HANDLE NO-UNDO.
dyn_buffer = BUFFER cliente:HANDLE.


/*
    VARIAVEIS 2
    NO-UNDO = controla o que é gravado na varivel
*/

// DVC - Atalho para variavel do tipo CHAR
DEFINE VARIABLE cNome AS CHARACTER NO-UNDO.
ASSIGN cNome = "Gustavo".

// DVI - Atalho para variavel do tipo INT ou INT64
DEFINE VARIABLE iNumero AS INT NO-UNDO.
ASSIGN iNumero = 8.

// DVD 
DEFINE VARIABLE dDataHoje AS DATETIME    NO-UNDO.
DISP iNumero
     cNome.
