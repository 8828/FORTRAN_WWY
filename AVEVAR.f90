!AVERAGE AND STANDARD VARIANCE
!2017.01.21 WWY
     PROGRAM AVR_STV

     	REAL, ALLOCATABLE :: LIST(:)
     	INTEGER :: n
     	REAL :: S, AVE, S2, VAR

     	WRITE (*, *) 'INPUT THE TOTAL NUMBER OF LIST:'
     	READ  (*, *) n

     	ALLOCATE(LIST(1: n))

        WRITE (*, *) 'INUPUT THE ELEMENTS OF LIST:'
        DO i = 1, n

        	READ (*, *) LIST(i)
            
            S  = S + LIST(i)
            S2 = S2 + LIST(i) ** 2

        END DO

        AVE = S / n
        VAR = SQRT((S2 - n * AVE ** 2)/(n - 1)) 
    
        !!note : pay attention to the use of '<n>'  
        WRITE (*, '(A, <n>(F8.5,1X))') 'THE ELEMENTS OF LIST:', (LIST(i), i = 1, n)
        WRITE (*, '(A, F8.5, 2X, A, F8.5)') 'THE AVERAGE IS:', AVE, 'THE STANDARD VARIANCE IS:', VAR

    END PROGRAM AVR_STV