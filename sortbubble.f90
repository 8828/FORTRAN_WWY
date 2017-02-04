!BUBBLE SORT
!2017.02.03 WWY

	  program bubble 
	  
	  	implicit none
	  	
	  	integer, parameter :: n = 5

	  	integer :: i, j
	  	real, dimension(n) :: list
	  	real :: buffer
	  	!read data
	  	write(*, '("input ",i3 , "numbers")') n
 	  	read(*, *) (list(i), i = 1, n)

 	  	!bubble sort(from small to big)
 	  	do i = 1, n

 	  		do j = 1, n - i

 				if (list(j) >= list(j+1)) then

 					buffer    = list(j)
 					list(j)   = list(j+1)
 					list(j+1) = buffer
 	  			
 	  			end if

 	  		end do
 	  		
 	  	end do

 	  	write(*, *) 'the result: '
 	  	write(*, *) list
	  
	  end program bubble 
	  