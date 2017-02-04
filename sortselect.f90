!SELECTION SORT
!2017.02.03 WWY

	  program sortselect
	  
	  	implicit none

	  	integer, parameter :: n = 5
	  	real, dimension(n) :: list
	  	real :: buffer
	  	integer :: i, j
	  	!read data
	  	write(*, '("input ", i3, " numbers")') n
	  	read(*, *) (list(i), i = 1, n)
	  	!selecton sort
	  	do i = 1, n - 1

	  		do j = i + 1, n

	  			if (list(i) >= list(j)) then

                    buffer  = list(i)
	  				list(i) = list(j)
	  				list(j) = buffer
	  			end if

	  		end do
	  		
	  	end do
	  	
 		write(*, *) 'the result: '
 		write(*, *) list
	  
	  end program sortselect
	  