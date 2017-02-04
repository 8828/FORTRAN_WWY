!INTERPOLATION SEARCH 
!2017.02.04 WWY

	  program interpolatesrch
	  
	  	implicit none
	  	integer, parameter :: n = 10
	  	integer, dimension(n) :: list = (/45, 546, 33, 54, 78, 47, 321, 64, 669, 8/)
	  	integer :: left, right, interp, log, key, insert, i, j
	  	!read data
	!  	write(*, '( "input", i3, "numbers:" )') n 
	!  	read(*, *) list
	!  	write(*, '( "origin list: ", <n>(i4, 1x) )') list 

	  	!insertion sort
	  	do i = 2, n 

	  		insert = list(i)

	  		do j = i, 2, -1

	  			if ( insert > list(j - 1) ) go to 1
	  			list(j) = list(j - 1)

	  		end do 
	  		
           j = 1

    1      list(j) = insert 
	  	 	
	  	end do 

	  	write(*, '( "sorted list: ", <n>(i4, 1x) )') list
	  	!interpolation search
	  	write(*, *) 'input the number to be serched:'
	  	read(*, *) key

	  	left   = 1
	  	right  = n
	  	interp = left + ( right - left ) * ( key - list(left) ) / ( list(right) - list(left) ) 
	  
	    do while ( left <= right )
	    	
	    	if ( key < list(interp) ) then

	    		right = interp - 1
	    		interp = left + ( right - left ) * ( key - list(left) ) / ( list(right) - list(left) )
	    	 
	    	elseif ( key > list(interp) ) then
	    		
	    		left = interp + 1
	    		interp = left + ( right - left ) * ( key - list(left) ) / ( list(right) - list(left) )

	    	elseif ( key == list(interp) ) then

	    		log = 1
	    		exit
	
	        end if 

			log = 0

	    end do

	    if ( (key < list(1)) .or. (key > list(n)) ) then

	    	log = n + 1
	     	
	    end if
	    !result
	    !print*, log 
	    if ( log == 0 ) then

	    	write(*, *) 'not found'

	    elseif ( log == n + 1 ) then

	    	write(*, *) 'search exceed'

	    else 

	    	write(*, '( "the position is ", i3, "/", i2 )') interp, n

		end if 

	  end program interpolatesrch
	  