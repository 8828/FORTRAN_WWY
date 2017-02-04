!OVERLOAD SUBROUTINE USING MOUDLE
!2017.02.02 WWY
	  
	  program orld

	  	use output
	  
	  	implicit none

	  	integer, dimension(10) :: a = (/(i, i = 1, 10)/)
	  	integer :: n = 10, i
         
	  	call put(125)
	  	call put(12.5)
	  	call put((12.5, 25.5))
	  	call put('Hello World!')
	  	call put(.true.)
	  	call put(a, n)
	  
	  end program orld
	  