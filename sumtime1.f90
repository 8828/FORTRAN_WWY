!MODULE FOR sumtime.f90
!2017.02.02 WWY

	module plustime
	
	  implicit none
		
	  type time

		integer(kind=1) :: hour, minute 
						
	  end type time

	  interface operator(+)

	    module procedure sumtm
			
	  end interface 

	  contains

	  	function sumtm (t1, t2) result (t3)
	  	  
	  	  implicit none

	  	  intent(in) :: t1, t2
	  	  type(time) :: t1, t2, t3
	  	  
	  	  integer :: minutes

	  	  minutes   = t1.minute + t2.minute

	  	  t3.hour   = t1.hour + t2.hour + minutes / 60 

	  	  t3.minute = mod(minutes, 60)
	  		
	  	end function sumtm

	  	subroutine put (t)

	  		implicit none
	  		
	  		type(time), intent(in) :: t 
	  		
	  		write(*, '(i2, ":", i2)') t

	  	end subroutine put
	
	end module plustime
	