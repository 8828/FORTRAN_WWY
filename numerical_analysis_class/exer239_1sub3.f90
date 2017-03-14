! steffense subroutine
! wwy 2017.03.14

	subroutine steffense (x0, n)

		implicit none
		
		integer, parameter :: p = selected_real_kind(9)
		real(kind=p), intent(inout) :: x0
		integer, intent(inout) :: n 
		real(kind=p) :: g, x, x1, x2 
		integer :: i = 0 

		! function
		g(x) = 20.0 / (x **2 + 2 * x + 10.0)

		do while ( i < n )

			! for aitken method
		    x1 = g(x0)
		    x2 = g(x1)
		    x = f(x0, x1, x2)

		    if ( abs(x - x0) > 1e-8) then

				x0 = x
				
				i  = i +1
		    
		    else

		    	write(*,'("The numerical root is ", f11.9)') x 
		    	go to 10
		    	
		    end if

		end do


		write(*, *) "Fatal error!"
10		write(*, '(a, i3)') "OVER, acceleration number of steffense method is ", i 

			
	    contains

	    	real function f (x0, x1, x2)

	    	implicit none
	    	
            integer, parameter :: p = selected_real_kind(10)
	    	real(kind=p) :: x0, x1, x2

	    	f = x0 - ((x1 - x0) ** 2) / (x0 - 2 * x1 + x2) 

	        end function f 
		
	end subroutine steffense