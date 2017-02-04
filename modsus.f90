!MODULE SUCCESSOR
!2017.02.02 WWY

	  program modsus

	  	use pay_info
	  
	  	implicit none
	  	
	  	integer, parameter :: n = 2
	  	integer :: i
	  	type(worker_pay), dimension(n) :: workers

	  	do  i = 1, n 

	  		write(* , *) 'input name, number, salary/hr, time/hr'
	  		read(*, *) workers(i)
!	  		call tech_info(workers(i))
!	  		call tech_pay(workers(i))

	  	end do

	  	do i = 1, n

	  		call tech_info(workers(i))
	  		call tech_pay(workers(i))

	  	end do
	  
	  end program modsus
	  