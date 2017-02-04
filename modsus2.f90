!MODULE FOR modusus.f90
!2017.02.02 WWY

!qutoe fundamental module

	  module pay_info
	  
	  	use worker_info

	  	implicit none

	  	type worker_pay

	  		type(worker) :: basic
	  		
 			real :: hrpay

 			real :: wktime

	  	end type worker_pay
	  	
	  	contains

	  	  subroutine tech_info (info)
	  	  	
	  	  	implicit none
	  	  	
	  	  	type(worker_pay), intent(in) :: info

	  	  	call worker_info_show(info.basic)
	  	  	
	  	  end subroutine tech_info

	  	   subroutine tech_pay (info)
	  	     
	  	     implicit none
	  	     
	  	     type(worker_pay), intent(in) :: info
	  	     real :: pay

             pay = info.hrpay * info.wktime

             write(*, '(a, 1x, "pay/hr:", f6.2, "$")') trim(info.basic.name), info.hrpay
             write(*, '("work time:", f6.2, "hours", 2x, "work pay:", f6.2, "$")') info.wktime, pay
	  	    
             write(*, *) ''

	  	    end subroutine tech_pay 
	  
	  end module pay_info
