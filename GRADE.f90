!I/O WRITE DATA AND CLACULATE DATA
!2017.01.27 WWY
    
    PROGRAM GRADE
    IMPLICIT NONE
    	
!    	INTERFACE
    		
!    		SUBROUTINE WRTIEDATA (n)
!    		IMPLICIT NONE

!    			INTEGER :: n, i
!                CHARACTER :: NAME(n)
!                REAL :: MAT(n), PHY(n), ENG(n)
!             END SUBROUTINE

!            SUBROUTINE CLACUDATA (n)
!            IMPLICIT NONE

!                　INTEGER :: i, ISTAT, n
!                 REAL :: SUMMAT, SUMPHY, SUMENG, AVRMAT, AVRPHY, AVRENG, MAT, PHY, ENG
!                 CHARACTER :: NAME(n),FILENAME
!                 LOGICAL :: ALIVE

!            END SUBROUTINE
            
!        END INTERFACE         

    	INTEGER :: n 

    	WRITE(*, *) 'INPUT THE NUMBER OF STUDENTS:'
    	READ (*, *) n


     	CALL WRDA (n)
    	CALL CLDA (n)

    END PROGRAM GRADE

    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    !!TODAY, I MAKE BUGS.SET LENGTH FOR CHARACTER, SET SHORT NAME!
    !!FOR SUBROUTINE, YOU KNOW WHAT I MEAN. WRITE SUBROUTINE'S N-!
    !!AME WITH 1 BLANK LINE BEFORE IT.                           !
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!