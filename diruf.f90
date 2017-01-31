!I/O UNFORMATTED FORM AND DIRECTED ACCESS
!2017.01.31 WWY
	  program diruf
	  
	  	implicit none
        !interface for subroutine
	  	interface
	  		
	  		subroutine printdata (fileunit)

	  			implicit none
	  			integer :: fileunit
	  			character(len=10) :: name, number
	  			character(len=2) :: grade
	  			real :: score

             end subroutine

	  	end interface

	  	integer, parameter :: n=5
	  	character(len=10), dimension(n) :: name, number
	  	character(len=2), dimension(n) :: grade
	  	real, dimension(n) :: score
	  	integer :: i, editnum
	  	
	  	!open file
	  	open(10, file='diruf.dat', form='UNFORMATTED', access='DIRECT', recl=28)
	  	
	  	!read and write data
	  	do i = 1, n, 1
	  		
	  		write(*, *) 'input name, number, grade, score:'
	  		read(*, *) name(i), number(i), grade(i), score(i)
	  		write(10, rec=i) name(i), number(i), grade(i), score(i)
	  		
	  	end do
	  	
	  	!edit record
	  	
	  	!choose the edited record's number
	  	write(*, *) 'input the number of edited record: '
	  	read(*, *) editnum
	  	write(*, *) 'input the new record of name, number, grade, score:'
	  	read(*, *) name(editnum), number(editnum), grade(editnum), score(editnum)
	  	write(10, rec=editnum) name(editnum), number(editnum), grade(editnum), score(editnum)  
	  	
	  	!print data
	  	call printdata(fileunit=10)
	  
	  end program diruf
	  