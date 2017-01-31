!9 x 9 PRODUCT LIST
!2017.01.21 WWY
    PROGRAM PRODUCT
    	
    	INTEGER, DIMENSION(9, 9) :: LIST
    	INTEGER :: P 
 
        DO i = 1, 9
        	DO j = 1, i
        		LIST(j, i) = i * j          !STORE CONSTRUCT IS DIFFERENT FROM LOGICAL CONSTRUCT
        	END DO
        END DO
        
        WRITE(*, 100) LIST

        DO K = 1, 9

    	    WRITE (*, 100) (K * P, P = 1, K)
    100     FORMAT (9(I5,2X))
        
        END DO

    END PROGRAM