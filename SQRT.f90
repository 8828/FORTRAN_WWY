!APPLICATION OF ARRAY
!2017.01.21 WWY
    PROGRAM SQRTLIST

    	REAL, DIMENSION(0:9, 0:9) :: A
    	REAL :: aa 

    	DO i = 0, 9
    		DO j = 0, 9
    			aa = SQRT(10.0 * i + j)
    			A(i, j) = aa
    		END DO
    	END DO

    	DO i = 0, 9
    		WRITE(*, '(10(4X, I3, \))') i
    	END DO

    	WRITE (*, *)

    	DO j = 0, 9
    		WRITE (*,'(I1, 10(2X, F5.3))') j, (A(j, k), k = 0, 9)
    	END DO

    END PROGRAM SQRTLIST