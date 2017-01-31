!I/O UNFORMATTED SEQUENCE
!2017.01.31 WWY
      
      program sequf
	  
	  	implicit none
        
	  	integer, dimension(5) :: int 
	  	real, dimension(5) :: rea 
	  	character(len=20), dimension(5) :: cha 
	  	integer :: i, int1
	  	real :: j

	  	int = (/(i, i=1, 5)/)
	  	rea = (/(i, i=1, 5)/)
	  	data (cha(i),i=1, 5) / 'f77', 'f90', 'f95', 'f03', 'f08' /
	  	
	  	!!!open file with unformatted form and sequence access
	  	open(10, file='sequ.dat', form='UNFORMATTED')
	  	!!!write data
	  	write(10) int
	  	write(10) rea 
	  	write(10) cha 
	  	!!!make cursor at the beginning(only used in equence accesss which is default )
        rewind(10)
        !!!read data in writen file
        read(10) int1
        read(10) j
        !!!write readed data on the default equipment with formatted form
        write(*, *) int1
        write(*, *) j
        !!!close the file
        close(10)
	  
	  end program sequf