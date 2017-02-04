!MODULE FOR orld.f90
!2017.02.02 WWY

	  module output

	  	implicit none
	  	
	  	!interface for procedures to overload
	  	interface put

	  	  module procedure put_integer
	  	  module procedure put_real
	  	  module procedure put_complex
	  	  module procedure put_character
	  	  module procedure put_logical
	  	  module procedure put_array
  		
  		end interface put

        contains

          subroutine put_integer (i)
          	
          	implicit none
          	
          	integer :: i 

          	write(*, '("i = ", i10)') i 
          	
          end subroutine put_integer

          subroutine put_real (r)
          	
          	implicit none
          	 
          	real :: r 

          	write(*, '("r = ", f6.2)') r
          	
          end subroutine put_real

          subroutine put_complex (c)
          	
          	implicit none

 			complex :: c

 			write(*, '("c = ", f6.2, "+", f6.2, "i")') real(c), aimag(c)         	 
          	
          end subroutine put_complex

          subroutine put_character (str)
          	
          	implicit none

          	character :: str

          	write(*, '("str = ", a)') str
          	
          end subroutine put_character

          subroutine put_logical (l)
          	
          	implicit none
          	
          	logical :: l

          	write(*, '("l = ", l1)') l 
          	
          end subroutine put_logical

          subroutine put_array(arr, n)
          
          implicit none
          
          integer :: n, i

          integer, dimension(n) :: arr

          write(*, '("arr = ", <n>(i3, ""))') (arr(i), i = 1, n)

          end subroutine put_array

        end module output