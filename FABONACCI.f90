!PRINT Nth ELEMENT IN FABONACCI SEQUENCE AND ELENMENT(S) BEFORE IT   
!2017.01.18 WWY
   PROGRAM FABONACCI
   	INTEGER :: F1 = 1, F2 = 1, F
   	WRITE (*, *) 'INPUT THE NUMBER OF THE ELEMENT' 
   	READ (*, *) N
   	
   	IF (N == 1) WRITE(*, '(1X, A, I10, I10)') 'INDEX', N, F1
   	IF (N == 2) THEN
   		WRITE(*, '(1X, A, I10, I10)') 'INDEX', 1, F1
   		WRITE(*, '(1X, A, I10, I10)') 'INDEX', 2, F2
   	END IF

   	IF (N >= 3) THEN
        WRITE(*, '(1X, A, I10, I10)') 'INDEX', 1, F1
        WRITE(*, '(1X, A, I10, I10)') 'INDEX', 2, F2
   	    DO i = 3, N
   	    	F  = F1 + F2
   		    F1 = F2
   		    F2 = F
   		    WRITE(*, '(1X, A, I10, I10)') 'INDEX', i, F
   		END DO 
    END IF 

   END PROGRAM FABONACCI