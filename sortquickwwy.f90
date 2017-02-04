!QUICK SORT
!2017.02.04 WWY

	  program quicksortwwy
	  
	  	implicit none

	  	integer, parameter :: n = 9
	  	integer, dimension(n) :: list
	  	integer :: left, right, start, end, buffer

	  	!read data
	  !	write(*, '("input ", i3, " numbers")') n 
	  !	read(*, *) (list(i), i = 1, n)
  		list = (/90, 80, 65, 45, 21, 54, 5, 78, 44/)

  		!quick sort
  		write(*, '(<n>i4)') list
  		call quickstwwy(list, n, 1, n)
  		write(*, '(<n>i4)') list
	  	
	  
	  end program quicksortwwy
	  