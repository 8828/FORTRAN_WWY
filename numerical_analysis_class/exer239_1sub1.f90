! fixed point iteration method subroutine
! wwy 2017.03.12

	subroutine fixedpoint (x1, n)

		implicit none

		integer, parameter :: p = selected_real_kind(9)
		real(kind=p), intent(inout) :: x1
		integer, intent(inout) :: n
		integer :: i = 0 
		real(kind=p) :: g, x  

		! function
		g(x) = 20.0/(10.0+x**2+2.0*x)

		do while ( i < n )

			x = g(x1)

			if ( abs(x - x1) > 1e-8 ) then

				x1 = x 

				i = i + 1

			else

				write(*, '("The numerical root of fixed point itration method is ", f11.9)')  x 
				!print*, x1, g(x1), i 

				!stop "success!"
				go to 10 

			end if
			
		end do
	
		write(*, *) i, x, "Fatal Error!"
10		write(*, '(a, i2)') "OVER, itration number of fixed point itration method is ", i

		
	end subroutine fixedpoint