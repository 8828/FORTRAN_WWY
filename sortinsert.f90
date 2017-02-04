!INSERTION SORT
!2017.02.03 WWY

	  program sortinsert
	  
	  	implicit none
	  	integer, parameter :: n = 5
	  	real, dimension(n) :: list
	  	integer :: i, k, insert, buffer
	  	!read data
	  	write(*, '("input", i3, " numbers")') n 
	  	read(*, *) (list(i), i = 1, n)
	  	!insert sort
	  	do i = 2, n

	  		buffer = list(i)
	  		insert = 1
            !find where to insert the buffer
	  		do while(list(i) >= list(insert) .and. insert < i) 

	  			insert = insert + 1

	  		end do
	  		!make elements go forward one step which after the to be inserted position
	  		do k = i, insert + 1, -1

	  			list(k) = list(k - 1)

	  		end do 
	  		!insert the buffer
	  		list(insert) = buffer
	  	
	  	end do

	  	write(*, *) 'the result '
	  	write(*, *) list
	  
	  end program sortinsert
	  