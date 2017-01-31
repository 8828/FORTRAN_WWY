!I/O FORMATTED DIRECT
!2017.01.28(-29) WWY

    program fordir
    
    	implicit none

    	integer, parameter :: n = 2
    	real, dimension(n) :: score
    	character(len=10), dimension(n) :: nam, numb, gender
    	real :: readscore = 0
    	character(len=10) :: readname, readnumber, readgender
    	integer :: i

    	open(unit=10, file='info.dat', access='DIRECT', form='FORMATTED', recl=30)

    	do i = 1, n

            write(*, *) 'input name, number, gender, score'
    		read(*, *) nam(i), numb(i), gender(i), score(i)
    		write(unit=10, fmt=200, rec=i) nam(i), numb(i), gender(i), score(i)
    		
    	end do
        
        
    	read(10, 200, rec=2) readname, readnumber, readgender, readscore
    	write(*, 200) readname, readnumber, readgender, readscore
    	
    200 format(a10, a10, a4, f6.2)

        close(10)

    end program fordir

    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    !!very sad, severe(61)format/var-type mismatch!!
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!