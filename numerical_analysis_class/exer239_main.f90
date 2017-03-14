! main paogram
! wwy 2017.03.12

	program main
	
		implicit none
		
		integer, parameter :: p = selected_real_kind(9)
		real(kind=p) :: x0, x1, x2, x3
		integer :: n0, n1, n2, n3

		! maximum iteration number
		write(*, *) "Input the max number of iteration and acceleration :"
		read(*, *) n0 

		! initial value
		write(*, *) "Input the initial value:"
		read(*, *) x0

		x1 = x0; x2 = x0; x3 = x0
		n1 = n0; n2 = n0; n3 = n0

		call fixedpoint (x1, n1)

		write(*, *)

		call newtonmethod (x2, n2)

		write(*, *)

		call steffense (x3, n3)
	
	end program main
	