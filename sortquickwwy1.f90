!RECURSIVE SUBROUTINE FOR sortquick.f90
!2017.02.04 WWY

	  recursive subroutine quickstwwy (arr, size, start, end)
	  	
	  	implicit none
	  	integer :: size, start, left, end, right, buffer, key
	  	integer, dimension(size) :: arr 

		!partition, set the leftmost as key
 		key   = arr(start)
	  	left  = start 
	  	right = end + 1 
	  	if (right <= left ) return　!!!note that the quicksort's import key
	  	 
	  	!sort, ascending order
	  	do while ( .true. )
	  		!find where to insert the key
	  		do while ( .true. )
	  			!from left to find the larger one
	  			left = left + 1
	  			!found or at the end
	  			if ((arr(left) > key) .or. (left >= end)) exit
	  			
	  		end do
	  		!find the biger one from right
	  		do while ( .true. )

	  			right = right - 1
	  			!found or at the start
	  			if ((arr(right) < key) .or. (right <= start)) exit
	  			
	  		end do
	  		!exchange the left and the right if left < right
	  		if (left >= right)  exit
	  		!exchange
	  		buffer     = arr(right)
	  		arr(right) = arr(left)
	  		arr(left)  = buffer
	  		
	  	end do
	  	!if the left cross the right, exchange key and arr(right) because of the acending sort
	  	buffer     = arr(right)
 		arr(right) = arr(start)
 		arr(start) = buffer
 		!recursive
 		call quickstwwy(arr, size, start, right - 1)
 		call quickstwwy(arr, size, right + 1, end)
 		return

	  end subroutine quickstwwy