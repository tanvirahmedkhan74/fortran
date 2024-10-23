program main
    implicit none

    real, dimension(:,:), allocatable :: matrix_A, matrix_B, matrix_C

    call fill_matrix(matrix_A)
    call fill_matrix(matrix_B)

    matrix_C = matrix_multiplication(matrix_A, matrix_B)

    do i=1, size(matrix_C, 1)
        do j=1, size(matrix_C, 2)
            print *, matrix_C(i, j)
        end do
    end do

    deallocate(matrix_A)
    deallocate(matrix_B)
    deallocate(matrix_C)

    contains
    subroutine fill_matrix(matrix_A)
        integer(KIND=4) row, col, i, j
        real, dimension(:,:), allocatable :: matrix_A ! re-declaration of param

        print *, 'Enter matrix row & col '
        read *, row, col
        
        allocate(matrix_A(row, col))

        print *, 'Enter the Matrix: '
        do i=1, row
            do j=1, col
                read *, matrix_A(i, j)
            end do
        end do
    end subroutine fill_matrix
end program main

function matrix_multiplication(mat_A, mat_B) result(mat_C)
    real, dimension(:,:), allocatable :: mat_C
    real :: sum = 0
    integer(KIND=4) i, j, k
    allocate(mat_C(size(mat_A, 1), size(mat_B, 2))) ! mxn - nxp = mxp

    do i=1, size(mat_A, 1)
        do j=1, size(mat_B, 2)
            sum = 0
            do k=1, size(mat_A, 2)
                sum = sum + (mat_A(i, k) * mat_B(k, j))
            end do
            mat_C(i, j) = sum
        end do
    end do

end function matrix_multiplication
