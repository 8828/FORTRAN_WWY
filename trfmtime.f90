!OVERLOAD ASSIGNMENT USING MODULE
!2017.02.02 WWY

	  program trfmtime
	  
	    use timeclass

	  	implicit none
	  	
	  	type(time) :: t1, tr2
	  	real :: t2, tr1
	  	
	  	!hour:minute -> int.int
	  	t1  = time_(1, 27)
	  	tr1 = t1
	  	call output(t1)
	  	write(*, '("->", f7.3)') tr1
	  	!int.int -> hour:minute
	  	t2  = 2.6
	  	tr2 = t2
        write(*, *)
        write(*, '(f4.2, "-> ")', advance='no') t2
        call output(tr2)

	  end program trfmtime
	  