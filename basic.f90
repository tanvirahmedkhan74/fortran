program main
    implicit none ! strong type checking
    
    integer, parameter :: single = selected_real_kind(5, 37) ! const single, with single precision [6-9 decimal digits]
    integer(KIND=2) :: small_int    ! x bytes
    integer(KIND=4) :: mid_int
    integer(KIND=8) :: l_int
    
    real(kind=single) :: r_val = 1.2345678999999 ! check output
    character (len=50) :: name          ! String literal

    print *, 'Enter name and age: '
    read *, name, mid_int

    print *, 'Name and Age ',name , mid_int
    write(*,*) 'Single Precision Real ', r_val

end program main


    
