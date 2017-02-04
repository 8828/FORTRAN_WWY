!CREATE LINKED POINGER WITH INSERTING POINTER AT THE LAST BUT ONE
!2017.02.01 WWY
	  program pitlk
	  
	  	implicit none

	  	type node

	  		!data
	  		integer :: dat 
	  		!pointer 
	  		type(node), pointer :: npit
	  		
	  	end type node


	  	!create head pointer 
	  	type(node), pointer :: head, p
        
        head => null() !ending with blank array

        !create link
        call createlink (head)
        !write link
        call printlink (head)

      contains

        subroutine createlink (head)

          implicit none
          	  	
          type(node), pointer :: head, p
          real :: score
          head => null()
          
          !create link
          do

          	  write(*, *) 'input the number of precipitation or "-1" for ending:'
          	  read(*, *) score
          	  
          	  if (score == -1) exit
          	  
          	  allocate(p)
              p.dat  =  score
              p.npit => head
              head   => p

          end do 

        end subroutine createlink

        subroutine printlink (head)

          implicit none
          
          type(node), pointer :: head, p 

          p => head

          do while (associated(p))
              !print data
              write(*, '(i5,\)') p.dat 
              !next link
              p => p.npit

          end do         	  		 	  	
	  
	    end subroutine printlink

	  end program pitlk
	  