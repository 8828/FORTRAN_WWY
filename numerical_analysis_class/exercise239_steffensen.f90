! steffensen method 
! wwy 2017.03.14

	program steffensen
	
		implicit none

		integer, parameter :: p = selected_real_kind(10)
		real(kind=p) :: x, x0, x1, x2, g
		integer :: i=0, n 

		! function
		g(x) = 20.0 / (x **2 + 2 * x + 10.0)

		! max number of acceleration
		write(*, *) "Input the max num of acceleration"
		read(*, *) n 

		! initial value
		write(*, *) "Input the initial value"
		read(*, *) x0

		do while ( i < n )

			! for aitken method
		    x1 = g(x0)
		    x2 = g(x1)
		    x = f(x0, x1, x2)

		    if ( abs(x - x0) > 1e-8) then

				x0 = x
				
				i  = i +1
		    
		    else

		    	write(*,'("The numerical root is ", f10.6)') x 
		    	go to 10
		    	
		    end if

		end do


		write(*, *) "Fatal error!"
10		write(*, *) "Over", i 

			
	    contains

	    	real function f (x0, x1, x2)

	    	implicit none
	    	
            integer, parameter :: p = selected_real_kind(10)
	    	real(kind=p) :: x0, x1, x2

	    	f = x0 - ((x1 - x0) ** 2) / (x0 - 2 * x1 + x2) 

	        end function f 


		
	
	end program steffensen
	