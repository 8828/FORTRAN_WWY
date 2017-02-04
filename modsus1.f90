!MODULE FOR modsus.f90
!2017.02.02 WWY

!fundamental module

	  module worker_info
	  
	  	implicit none

	  	type worker

	  	    character(len=10) :: name
	  	    integer :: number
	  		
	  	end type worker
	  	
	    contains

	      subroutine worker_info_show (info)
	    		
	    	implicit none
	    		
	    	type(worker), intent(in):: info

	    	write(*, *) 'basic info:'

	    	write(*, '("name:", a, 2x, "number:", i8)') trim(info.name), info.number 
	    		
	      end subroutine worker_info_show
	  
	  end module worker_info
