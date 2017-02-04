!SHELL SORT
!2017.02.03 WWY

	  program sortshell
	  
	  	implicit none

	  	integer, parameter :: n = 10
	  	integer, dimension(n) :: list
	  	integer :: i, j, k, m, p, insert, s 
	  	integer :: buffer
	  	!read data
	  	write(*, '("input ", i3, " numbers")') n 
	  	read(*, *) (list(i), i = 1, n)
	  	!shell sort
	  	k = n / 2
	  	do while(k > 0)

	  		do i = 1, n  

	  			j = i + k
	  			s = 0

	  			!get the total number of the sequence
	  			do while(j <= n)
	  				
	  				if (list(j - k) > list(j)) then

	  					buffer      = list(j - k)
	  					list(j - k) = list(j)
	  					list(j)     = buffer

	  				end if 

	  				s = s + 1
	  				j = j + k
	  				

	  			end do 
	  			!insertion sort for the sequence
	  			do m = 2, s + 1

	  				buffer = list(i + (m - 1) * k)
	  				insert = 1 

	  				if (list(i + (insert - 1) * k) < buffer .and. insert < m) then

	  					insert = insert + 1

	  				end if 

	  				do p = m, (insert + 1), -1

	  					list(i + (p - 1) * k) = list(i + (p - 2) * k)
	  					
	  				end do

	  				list(i + (insert - 1) * k) = buffer
	  				
	  			end do

	  		end do 

	  		k = k / 2

	  	end do 

	  	write(*, '("the result ")')
	  	write(*, *) list
	  
	  end program sortshell
	  