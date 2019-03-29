program add
implicit none

real :: a,b, result, arraytest(5)
integer :: i

do i = 1, 5
arraytest(i) = i
end do

print *, arraytest
a = 2.0
b = 15.0
result = a+b
print *, 'The total is ', result

if (a > 5) then
    print *, 'A is larger than 5'
else
    print *, 'A is not larger than 5'
end if

end program add