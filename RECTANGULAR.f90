!RECTANGULAR INTEGRATION METHOD OF e^x FROM a TO b
!2017.01.20 WWY
    PROGRAM RECTANGULAR
    	REAL(kind = 8) :: a, b, S, dx
    	INTEGER :: n 

        WRITE (*, *) 'INPUT a, b:'
        READ  (*, *) a, b

        WRITE (*, *) 'INPUT THE NUMBER OF GROUPS'
        READ  (*, *) n
        
        dx = (b - a)/n
       
        DO i = 1, n
        	ds = ABS(EXP(a) * dx)
        	a  = a + dx
        	S  = S + ds
        END DO

        WRITE (*, '(A, 2X, F10.8)') 'THE RESULT OF INTEGRATION:', S

    END PROGRAM RECTANGULAR

　　　　!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    !!!RECTANGULAR INTEGRATION: INTEGRATION MEANS SUMMARY, SYMBOLS PLAY!!
    !!!IMPORTANT ROLES. SO THE NUMBER OF CALCULATION RELYS ON THE THE  !!
    !!!NUMBER OF GROUPS. FROM 1 TO n IN THE PROCEDURE                  !!
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!