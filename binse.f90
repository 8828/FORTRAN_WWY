!I/O BINARY SEQUENCE
!2017.01.31 WWY

	  program binse
	  
	  	implicit none
	  	
	  	character(len=20) :: filename
	  	character(len=7) :: task, result

	  	!choose the type of task which consists of 'creat', 'inquire', 'end'
	  	do while(task/='end')

	  		write(*, *) 'input the type of task(create, inquire or end)'
	  		read(*, *) task

	  		select case(task)

	  			case('create')

	  				write(*, *) 'input the filename'
	  				read(*, *) filename
	  				!use function: creatfile
	  				result = createfile(filename)
                    !judge the result
	  				if (result=='success') then

	  					write(*, *) 'creat file successfully!'

	  				end if

                case('inquire')

                    write(*, *) 'input the inquired filename'
                    read(*, *) filename
                    !use the function: inquirefile
                    result = inquirefile(filename)
                    !judge the result
                    if ('success'==result) then

                    	write(*, *)	'inquire file successfully!'

                    end if


            end select

        end do

        stop 'end the task' 				
	  
	    !functions which contained in the main program 
	  contains

	  	!function createfile
	  	
	    character(len=10) function createfile (filename) result (cf)

	  	  implicit none

	  	  character(len=20) :: filename
	  	  character(len=10) :: name
	  	  real :: chsc, mtsc, elsc
	  	  character*10 :: operate
	  	  logical :: isexist
         
          !inqure the file to decide whether overwrite or not
          inquire(file=filename, exist=isexist)
	  	  !get the type of operation, consisting of 'write', 'overwrite' and 'end'
	  	  if (isexist) then

	  	      write(*, *) 'this file exists,'
	  	      write(*, *) 'input the type of operation(end or overwrite):'
	  	      read(*, *) operate
	  	      !judge
	  	      if (operate=='end') then

	  	    	  cf = 'end'

	  	          return

	  	      else

	  	    	  operate = 'overwrite'

	  	      end if

	  	  end if

		  if (operate=='write') then

			  open(10, file=filename, form='binary', position='append')

		  else

		  	  open(10, file=filename, form='binary')

		  end if

		  !write data
		  do

		  	  write(*, *) 'input the name or "end" for name:'
		  	  read(*, *) name 

		  	  if (name=='end') exit
             
              write(*, *) 'input chinese score, math score, english score :'
              read(*, *) chsc, mtsc, elsc
              write(10) name, chsc, mtsc, elsc

          end do
          
          cf = 'success' 

          return

      end function createfile

      !another function inquirefile

        character(len=10) function inquirefile (filename)

          implicit none
          
          character(len=20) :: filename
          character(len=10) :: name, goal
          real :: chsc, mtsc, elsc
          logical :: isexist
          !character(len=*) :: inquirefile

          !inquire
          inquire(file=filename, exist=isexist)

          !no file
          if (.not.isexist) then

          	  write(*, *) 'no this file'

          	  inquirefile = 'no file'

          	  return

          end if
          
          !exist file
          open(10, file=filename, form='binary')

          write(*, *) 'input the inquired name:'
          read(*, *) goal
          !sequence
          rewind(10)
          !inquire the name
          do 

          	  if (name==goal) exit

          	  read(10) name, chsc, mtsc, elsc

          end do

          write(*, *) name, chsc, mtsc, elsc

          inquirefile = 'success'

          return

        end function inquirefile



	  end program binse
	  