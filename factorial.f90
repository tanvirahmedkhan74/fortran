program n_factorial
    use math_funcs, only: factorial ! loading module
    implicit none

    integer(KIND=4) :: n, fact

    print *, 'Enter n'
    read *, n

    fact = factorial(n)

    write(*,*) 'Factorial is ', fact
end program n_factorial


