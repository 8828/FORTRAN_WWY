!SUBROUTINE FOR diruf.f90 TO PRINT DATA
!2017.01.31 WWY
	  
	  subroutine printdata (fileunit)
	  	
	  	implicit none
	  	
	  	integer, intent(in) :: fileunit
	  	character(len=10) :: name, number
	  	character(len=2) :: grade
	  	real :: score
	  	integer :: n=1, stat
        
        write (*, '(a4, 5x, a6, 4x, a5, 2x, a5, 3x)') 'name', 'number', 'grade', 'score'

	  	do
	  		
	  		if (stat /= 0) exit
	  		read(fileunit, rec=n, iostat=stat) name, number, grade, score
            write(*, '(1x, a10, a10, a2, 2x,f6.2)') name, number, grade, score
            n = n + 1 
	  	 	

	  	 end do 
	  	
	  end subroutine printdata