!TRAPEZOID INTEGRATION METHOD OF 1/(1 + X) FROM a TO b
!2017.01.20 WWY
    PROGRAM TRAPEZOID

    	REAL :: a, b, S, dx
    	INTEGER :: n 

    	WRITE (*, *) 'INPUT a, b:'
    	READ  (*, *) a, b

    	WRITE (*, *) 'INPUT THE NUMBER OF GROUPS'
    	READ  (*, *) n

    	dx = (b - a)/n

    	DO i = 1, n
    		h1 = 1.0 / (1.0 + a)
    		h2 = 1.0 / (1.0 + (a + dx))
    		ds = (h1 + h2) * dx / 2.0
    		S  = S + ds
    		a  = a + dx
    	END DO

    	WRITE (*, '(A, 2X, F10.8)') 'THE RESULT IS:', S

    END PROGRAM TRAPEZOID