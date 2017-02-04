!MODULE FOR trfmtime.f90
!2017.02.02 WWY

	  module timeclass
	  
	  	implicit none

	  	type time 

	  		private

	  		integer(kind=1) :: hour, minute
	  		
	  	end type time 
	  	
	  	interface assignment(=)

	  		module procedure real_to_time
	  		module procedure time_to_real
	  		
	  	end interface ! assignment(=)

	    contains

	      subroutine real_to_time(tr, t)

	      type(time), intent(out) :: tr
	      real, intent(in) :: t 

	      tr.hour   = int(t)
	      tr.minute = int((t - int(t))* 60 + 0.5) !rounding 
	      	
	      end subroutine real_to_time

	      subroutine time_to_real (tr, t)

	      	type(time), intent(in) :: t 
	      	real, intent(out) :: tr

	      	tr = t.hour + real(t.minute) / 60.0 
	      	
	      end subroutine time_to_real

	      subroutine output (t)

	      	type(time), intent(in) :: t 

	      	write(*, '(i2, ":", i2)', advance='no') t
	      	
	      end subroutine output

	      !function to construct time as module's attribute is private
	      
	      function time_ (hour, minute) result(tm)

	       	integer, intent(in) :: hour, minute
	       	type(time) :: tm

			tm.hour   = hour
			tm.minute = minute

	       end function time_ 
	  
	  end module timeclass
	  