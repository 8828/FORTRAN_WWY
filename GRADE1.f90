!SUBROUTINE FOR GRADE.f90
!2017.01.27 WWY
    
    SUBROUTINE WRDA (n)
    IMPLICIT NONE
    
    INTEGER :: n, i
    CHARACTER(LEN=20) :: NAME(n)
    REAL :: MAT(n), PHY(n), ENG(n)

    OPEN (UNIT=10, FILE='GRADE.txt')
    
    DO i = 1, n

        WRITE (*, *) 'INPUT THE NAMES'
        READ  (*, *) NAME(i)

        WRITE (*, *) 'INPUT THE GRADES OF MATH, PHYSICS, ENGLISH:'
        READ  (*, *)  MAT(i), PHY(i), ENG(i)
        
        WRITE (10, '(A10, 3X, 3(F6.2, 3X))') NAME(i), MAT(i), PHY(i), ENG(i)
        WRITE (*, *) NAME

    END DO

    CLOSE (10)

    END SUBROUTINE WRDA