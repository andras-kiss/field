program deconvolution
implicit none

integer :: stat
real rc, e0, conv, i, j

rc=0.8
open(1,file='17012503.txt')
open(2,file='17012503_deconvoluted.txt')
read(1, *) i, j, e0
do
   read(1, *, iostat=stat) i, j, conv
   if (stat /= 0) exit
   write(2, *) i, j, ((conv - e0*rc)/(1-rc))
   e0=conv
end do
close(1) 
close(2)

end program deconvolution
