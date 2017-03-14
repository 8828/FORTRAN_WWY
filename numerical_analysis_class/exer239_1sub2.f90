! newton method subroutine 
! wwy 2017.03.12

	subroutine newtonmethod (x1, n)
		
		implicit none
		
		integer, parameter :: p = selected_real_kind(9)
		real(kind=p), intent(inout) :: x1
		integer, intent(inout) :: n 
		real(kind=p) :: f, g, x 
		integer :: m = 0

		! original function
		g(x) = x **3 + 2 * x **2 + 10 * x - 20.0
		! differential function
		f(x) = 3 * x ** 2 + 4 * x + 10

		do while ( m < n )

			x = x1 - g(x1) / f(x1)

			if ( abs(x - x1) > 1e-8 ) then

				x1 = x 

				m = m + 1

			else

				write(*, '("The numerical root of newton method is ", f11.9)') x 
				go to 10
				
			end if
			
		end do

		write(*, *) "Fatal error!"
10		write(*, '(a, i3)') "OVER, itration number of newton method is ", m
		
	end subroutine newtonmethod