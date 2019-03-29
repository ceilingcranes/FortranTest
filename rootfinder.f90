program rootfinder
! Program to find the root of y = x^2 - 5, aka to calculate sqrt(5) within the given tolerance.
implicit none

real :: initial, tolerance, root
! How close to 0 the x value should be
tolerance = 0.0001 

print *, 'Enter initial guess'

read *, initial

root = findroot(initial, tolerance)
print *, 'Root is ', root

contains

function f(x)
! Find sqrt(5) by finding root of f(x) = x^2 - 5
implicit none
    real :: f, x

    f = x**2 - 5
end function f

function fprime(x)
! Derivative of f(x)
implicit none
    real :: fprime, x

    fprime = 2*x 
end function fprime

recursive function findroot(x0, tolerance) result(root)
! Call the Newton-Ralphson method until f(x) is within the given tolerance of 0. 
! X_n = X_n-1 - F(X_n-1)/F'(X_n-1)
implicit none

    real :: x0, tolerance, y, yprime, x, root
    print *, x0
    y = f(x0)
   ! print *, y
    yprime = fprime(x0)
    root = x0
    if (y > tolerance) then
        x = x0 - y / yprime
        root = findroot(x, tolerance)
    endif 


end function findroot

end program rootfinder
