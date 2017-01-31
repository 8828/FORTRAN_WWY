!NEWTON ITERATION TO SOLVE THE EQUATION:2x^3 - 4x^2 + 3x - 7 = 0 DIFFERENTIATION: 6x^2 - 8x + 3
!2017.01.18 WWY
    PROGRAM NEWTON
    	REAL(KIND = 8) :: X, X1
    	WRITE (*, *) 'INPUT THE PREDICTED SOLUTION:'
    	READ  (*, *) X
    	i = 0
    	DO WHILE (.TRUE.) 
    		X1 = X - (2.0 * X ** 3 - 4.0 * X ** 2 + 3.0 * X - 7.0)/(6 * X ** 2 - 8 * X + 3)
    		IF (ABS(X1 - X ) < 1E-6) THEN
    			EXIT
    		ELSE
    			X = X1
    	    END IF
    	    WRITE (*, '(A, 2X, F10.8, A, 2X, F10.8)') 'X', X, 'X1', X1
    	    i = i + 1
    	 END DO
    	 WRITE(*, '(A, 2X, I3, 2X, A, 2X, F10.8)') 'THE NUMBER OF ITERATION ', i, 'THE NUMERICAL SOLUTION IS X = X1 =', X1
    END PROGRAM NEWTON

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!NEWTON ITERATION: NOW YOU HAVE CURVED THE FUNCTION!!!
!!!THEN FIND ONE PONIT NAMED X, DRAW THE TANGET LINE,!!!
!!!GET ANOTHER PONIT AT THE AXIS NAMED X1. AND X1 =  !!!
!!!X - f(X)/f'(X). DO IT UNTIL REACH THE GIVEN PRECI-!!!
!!!-SION.                                            !!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
