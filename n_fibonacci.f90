program fibonacci
    implicit none 

    integer(KIND=8) :: fib, first, second
    integer(KIND=4) :: i, n 

    fib = 0
    first = 0
    second = 1

    print *, 'Enter the value for n: <nth fibonacci> '
    read *, n  

    if(n < 1) then 
        print *, 'Enter a valid num >= 1'
    else if(n == 1) then
        fib = 0
    else if(n == 2) then
        fib = 1
    else
        do i =1, n-2
            fib = first + second
            first = second
            second = fib
        end do
    end if 
    
    write (*,*) n, 'th fibonacci is ', fib
end program fibonacci