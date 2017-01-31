!CHORD ITERATIVE METHOD TO SOLVE THE EQUATION: x^3 - 2x^2 + 7x + 4 = 0
!2017.01.19 WWY
    PROGRAM CHORD
    	REAL(KIND = 8) :: X1, X2, F1, F2, F = 1.0
    	    	
    	i = 0

    	DO WHILE (.TRUE.)
    		WRITE (*, *) 'INPUT X1, X2:'
    		READ (*, *) X1, X2
    		IF ((X1**3.0 - 2.0*X1**2 + 7.0*X1 + 4.0) * (X2**3.0 - 2.0*X2**2 + 7.0*X2 + 4.0) <= 0) EXIT
    	END DO 
 
        DO WHILE ((ABS(X1 - X2) > 1E-6) .AND. ABS(F) > 1E-6)
        	i = i + 1
            F1 = X1**3.0 - 2.0*X1**2 + 7.0*X1 + 4.0
        	F2 = X2**3.0 - 2.0*X2**2 + 7.0*X2 + 4.0
        	X = X2 - (X2 - X1) /((X2**3.0 - 2.0*X2**2 + 7.0*X2 + 4.0) - (X1**3.0 - 2.0*X1**2 + 7.0*X1 + 4.0)) * (X2**3.0 - 2.0*X2**2 + 7.0*X2 + 4.0)
        	F = X**3.0 - 2.0*X**2 + 7.0*X + 4.0
        	IF (F1 * F <= 0) THEN
        		X2 = X
            ELSE 
            	X1 = X
            END IF
        END DO

        IF (ABS(X1 - X2) < 1E-6) X = (X1 + X2) / 2.0
        WRITE (*, '(A, I3, 2X, A, F10.8)') 'THE NUMBER OF ITERATION IS ', i, 'THE SOLUSION IS ', X

    END PROGRAM CHORD

    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    !!!CHOOSE TWO POINTS NAMED X1, X12 WHICH MAKE F(X1)xF(X2)<=0!!
    !!!THEN USE THEM MAKE A CHORD,                              !!
    !!!GET X = X2 - (X2 - X1)/(F(X2)- F(X1))*F(X2)              !!
    !!!USE X REPLACE X1 OR X2 SO THAT F(X)*F(X1)<0 OR F(X)*F(X2)!!
    !!!<0. WHEN |X2-X1|<GIVEN ORECISION OR |F(X)|< GIVEN PRECIS-!!
    !!!-ION, GET THE SOLUTION X = (X1+X2)/2                     !!
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!