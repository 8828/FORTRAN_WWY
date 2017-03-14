! Newton's Method to solve equation X^2 + C = 0
! WWY 2017.03.05 GNU/Liunx_ifort

	program newton
	
		implicit none
		
		integer, parameter :: k1 = selected_int_kind(5)
		real, parameter :: p1 = selected_real_kind(6)

		integer(kind=k1) :: N, i  
		real(kind=p1) :: x1, x, C, f 

		! function
		f(x) = ( x + C / x ) / 2.0

		write(*, *) "Input the constant number 'C' "
		read(*, *) C  

		write(*, *) "Input the number of maxmum iteration:"
		read(*, *) N 

		write(*, *) "Input the initial value for equation:"
		read(*, *) x 

		! iterate
		do while ( i <= N )

			x1 = f(x)

			if ( abs(x1 - x) > 1e-5 ) then

				x = x1

			else

				write(*, '("The numerical solution is: ", f10.6)') x1
				stop "success!" 
				
			end if
			
		end do

		! failure infomation
		write(*, *) "fatal: cannot solve it!"

	
	end program newton
	