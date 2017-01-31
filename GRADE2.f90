!SUBROUTINE CALCUDATA FOR GRADE.f90
!20170127 WWY

    SUBROUTINE CLDA (n)
    IMPLICIT NONE

    INTEGER :: i, ISTAT, n
    REAL :: SUMMAT=0, SUMPHY=0, SUMENG=0, AVRMAT=0, AVRPHY=0, AVRENG=0, MAT=0, PHY=0, ENG=0
    CHARACTER :: NAME(n),FILENAME
    LOGICAL :: ALIVE
    
    !FILENAME = 'GRADE.txt'
    INQUIRE(FILE='GRADE.txt', EXIST=ALIVE)
    !ALIVE = .TRUE.

    IF (ALIVE) THEN

    	OPEN (11, FILE='GRADE.txt', ACCESS='SEQUENTIAL', STATUS='OLD')
    	REWIND(11)

    	DO 

    		READ(11, '(A10, 3X, 3(F6.2, 3X))', IOSTAT=ISTAT) NAME, MAT, PHY, ENG
    		PRINT *, NAME, MAT, PHY, ENG

    		IF (ISTAT/=0) EXIT

    		SUMMAT = SUMMAT + MAT
    		SUMPHY = SUMPHY + PHY
    		SUMENG = SUMENG + ENG

    	END DO

    ELSE

    	WRITE (*, *) 'THERE IS NO FILE!'

    END IF

    CLOSE (11)

    AVRMAT = SUMMAT/n
    AVRPHY = SUMPHY/n
    AVRENG = SUMENG/n

    WRITE (*, '(A, 2X, F6.2)') 'AVERAGE MARK OF MATH:', AVRMAT, 'AVERAGE MARK OF PHYSICLS:', AVRPHY, 'AVERAGE MARK OF ENGLISH:', AVRENG

    END SUBROUTINE CLDA