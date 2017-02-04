!OVERLOAD OPERATOR USING MODULE
!2017.02.02 WWY

	  program sumtime
	  
	  	use plustime

	  	implicit none

	  	type(time) :: t1, t2, t3

	  	t1 = time(1, 36)
	  	t2 = time(5, 44)
	  	t3 = t1 + t2

	  	call put(t3)
	  
	  end program sumtime
	  