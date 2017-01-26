set size square
set pm3d map
set dgrid3d 21, 21 , 10 gauss 40, 40
set pm3d interpolate 2,2
#set contour
#set cntrparam levels auto 10
#set key outside
#set term jpeg
set term postscript enhanced color
#set terminal pdf

set xlabel "X / {/Symbol m}m"
set ylabel "Y / {/Symbol m}m"
set cblabel "E vs. Ag/AgCl/3M KCl / mV"
#set palette gray
set palette rgbformulae 30, 31, 3 # quickgrid
#set palette rgbformulae 22, 13, -31 # quickgrid
#set palette rgbformulae 33, 13, 10 # rainbow
set xtics font "Helvetica, 25"
set ytics font "Helvetica, 25"
set xlabel font ",25"
set ylabel font ",25"
set cblabel font ",25"
set cbtics font ",25"
set cblabel offset 4,0
set ylabel offset -3,0
set xlabel offset 0,-1
set xtics -1000, 500, 1000
set ytics -1000, 500, 1000
set yrange [-1000:1000]
set xrange [-1000:1000]

#set cbrange [3:5.3]
set cbrange [0.08:0.23]
set label "A" at -900, 800 tc rgb "white" font ",40" front
set out "17012501.eps" 
#splot "17012501.txt" u (($1-10)*100):(($2-10)*100):(-$3/0.023+9) notitle
splot "17012501.txt" u (($1-10)*100):(($2-10)*100):($3) notitle
unset label

#set cbrange [3:5.3]
set cbrange [-0.009:0.009]
set label "B" at -900, 800 tc rgb "white" font ",40" front
set out "17012503_deconvoluted.eps" 
#splot "17012503_deconvoluted.txt" u (($1-10)*100):(($2-10)*100):(-$3/0.023+9) notitle
splot "17012503_deconvoluted.txt" u (($1-10)*100):(($2-10)*100):($3) notitle
unset label
