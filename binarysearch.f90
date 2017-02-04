!BINARY SEARCH
!2017.02.04 WWY

	  program binarysrch
	  
	  	implicit none
	  	integer, parameter :: n = 10
	  	integer, dimension(n) :: list = (/4698, 78, 54, 87, 79, 5, 59, 56, 12, 4/)
	  	integer :: left, right, middle, log, insert, j, i, key
	  	
	  	write(*, '( "origin list:", <n>i4 )') list
	  	!sort
      	do i = 2, n

	  		insert = list(i)

	  		do j = i, 2, -1

	  			if ( insert > list(j - 1) ) go to 1

	  			list(j) = list(j - 1)

	  		end do 
	        
	        j       = 1
	 1      list(j) = insert
	 		
	 	end do 

	 	write(*, '( "sorted list:", <n>( i4, 1x) )') list

	 	!binary search
	 	write(*, *) 'input the number you want to search for:'
	 	read(*, *) key

	 	left   = 1
	 	right  = n 
	 	middle = (left + right) / 2

		do while( right >= left )  

		 	if ( key > list(middle) ) then
	 	  	
	 			left   = middle + 1
	 			middle = (left + right) / 2

	 		elseif ( key < list(middle) ) then
	 			
	 			right  = middle - 1
	 			middle = (left + right) / 2

	 		elseif ( key == list(middle) ) then

	 			log = 1
	 			exit

	 		end if

	 		log = 0 

		end do 

	 	if ( (key < list(1)) .or. (key > list(n)) ) then

	 		log = n + 1

	 	end if 


		!result
		if ( log == n + 1 ) then

			write(*, *) 'search exceed '

		elseif ( log == 0 ) then

			write(*, *) 'not found'

		else 

			write(*, '("its position: ", i3, "/", i2)') middle, n

		end if 		  	  


	  end program binarysrch
	  