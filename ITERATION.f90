!USING ITERATION TO SOLVE THE EQUATION: x^3 + 2x^2 + 2x + 1 = 0 OR x = -1/2 X (x^3 + 2x^2 + 1)
!2017.01.18 WWY
    PROGRAM ITERATION
    	REAL(KIND = 8) :: X, X1
    	WRITE (*, *) 'INPUT THE PREDICTED SOLUTION'
!    	READ  (*, *) X
!        DO i = 1, 30
!        	X1 = -1/2.0 * (X ** 3 + 2.0 * X ** 2 + 1.0)
!        	WRITE (*, '(A, 2X, F10.8, 2X, A, F10.8)') 'X', X, 'X1', X1
!            IF (ABS(X1 - X) < 1E-6) THEN
!            	EXIT
!            ELSE
!            	X = X1
!            END IF
!        END DO
!        WRITE (*, '(I2, 2X, A, 2X, F10.8)') i, 'THE NUMERICAL SOLUSION IS', X1
!    END PROGRAM ITERATION


!!!!!!!!!!!!!!!!!!!BUG MAKER!!!!!!!!!!!!!!!!!!!
!!!WHEN |X1 - X| < 10^-6(GIVEN PRECISION), WE!!
!!!THINK THE NUMERICAL SOLUTION IS X=X1.     !!
!!!ATTENTION: THE PRECISION OF X1 AND X MUST !!
!!!      GREATER THAN 10^-6(GIVEN PRECISION).!!
!!!   OTHERWISE, THE ITERISION WILL NOT STOP.!!
!!!IF THE KIND IS 'REAL', MAKE NUMBERS '*.0'.!!
!!!'EXIT' HAS EFFECT ON DO (WHILE) ITERATION !!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        READ (*, *) X
        J = 0
        DO WHILE (.TRUE.)
        	J = J + 1
        	X1 = -1/2.0 * (X ** 3 + 2.0 * X ** 2 + 1.0)
        	IF (ABS(X1 - X) < 1E-7) THEN
        		EXIT
        	ELSE
        		X = X1
        	END IF
        END DO
        WRITE (*, '(I2, 2X, A, 2X, F10.8)') J, 'THE NUMERICAL SOLUSION IS', X1
    END PROGRAM ITERATION
