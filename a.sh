gfortran deconvolution.F90
./a.out
gnuplot plot
gnuplot spatio

#ls *.eps > eps_files
#for i in $(cat eps_files)
#do
#   ps2pdf $i
#done

pdflatex -shell-escape field.tex
pdflatex -shell-escape field.tex
pdflatex -shell-escape field.tex

#./clean.sh
