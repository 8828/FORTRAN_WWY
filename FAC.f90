!SUBROUTINE
!2017.01.24 WWY
    RECURSIVE SUBROUTINE FAC (P, n)

        IMPLICIT NONE
        INTEGER, INTENT(IN) :: n
        INTEGER, INTENT(OUT) :: P

        IF (n==0) THEN 
        	
        	P =1
        
        ELSEIF (n==1) THEN

            P = 1
       
        ELSE 

        	CALL FAC(P, n-1)

        	P = P * n

        END IF

        
    END SUBROUTINE FAC