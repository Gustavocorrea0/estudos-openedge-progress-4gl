DEF TEMP-TABLE ttRequest NO-UNDO
    FIELD fieldA AS CHAR
    FIELD fieldB AS CHAR.

DEF TEMP-TABLE ttResponse NO-UNDO LIKE ttRequest.
    
PROCEDURE swapFields:
    DEF INPUT PARAMETER TABLE FOR ttRequest.
    DEF OUTPUT PARAMETER TABLE FOR ttResponse.
    
    FOR EACH ttRequest:
        CREATE ttResponse.
        ASSIGN
            ttResponse.fieldA = ttRequest.fieldB
            ttResponse.fieldB = ttRequest.fieldA.
    END.
END PROCEDURE.

CREATE ttRequest.
ASSIGN ttRequest.fieldA = "A"
       ttRequest.fieldB = "B".
       
CREATE ttRequest.
ASSIGN ttRequest.fieldA = "B"
       ttRequest.fieldB = "C".
       
CREATE ttRequest.
ASSIGN ttRequest.fieldA = "C"
       ttRequest.fieldB = "D".
 
RUN swapFields (INPUT TABLE ttRequest, OUTPUT TABLE ttResponse).

FOR EACH ttResponse:
    DISPLAY ttResponse.
END.