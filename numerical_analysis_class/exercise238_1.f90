! bisection method 
! wwy gnu/linix_ifort

	program bisection
	
		implicit none

		integer, parameter :: k = selected_real_kind(8)
		real(kind=k) :: x1, x2, x, f  

		! equation
		f(x) = x ** 2 - x - 1

		! input initial value
		write(*, *) "Input x1, x2"
		read(*, *) x1, x2
 

		do while ( abs(x1 - x2) / 2.0 > 0.05 )

			x = ( x1 + x2 ) / 2.0

			if ( f(x) * f(x1) > 0 ) then

				x1 = x 

			else

				x2 = x 
				
			end if
			
		end do

		! root
		x = ( x1 + x2 ) / 2.0

		write(*, '("numerical root(>0):", f6.4)') x


	end program bisection
	