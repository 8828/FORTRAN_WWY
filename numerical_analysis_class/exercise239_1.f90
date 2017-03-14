! fixed point iteration method
! wwy 2017.03.12

	program fixed_point
	
		implicit none

		integer, parameter :: p = selected_real_kind(9)
		real(kind=p) :: g, x, x1
		integer :: i=0, n 

		! function
		g(x) = 20.0/(10.0+x**2+2.0*x)

		! maximum iteration number
		write(*, *) "Input the max number of iteration:"
		read(*, *) n 

		! initial value
		write(*, *) "Input the initial value:"
		read(*, *) x1

		do while ( i < n )

			x = g(x1)

			if ( abs(x - x1) > 1e-8 ) then

				x1 = x 

				i = i + 1

			else

				write(*, '("The numerical root is ", f11.9)')  x 
				!print*, x1, g(x1), i 

				stop "success!"
				
			end if
			
		end do
	
		write(*, *) i, x, "Fatal Error!" 

	end program fixed_point
	