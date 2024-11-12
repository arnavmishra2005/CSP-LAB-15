# linespoints.gp
set terminal pdfcairo enhanced font 'Verdana,10'
set output 'linespoints.pdf'

set title "Marks obtained by Students"
set xlabel "Courses"
set ylabel "Marks"
set grid
set xtics rotate by -45

# Move the key (legend) outside the plot area to the right
set key outside right

plot "marks.dat" using 2:xtic(1) with linespoints title "Student1", \
     "marks.dat" using 3:xtic(1) with linespoints title "Student2", \
     "marks.dat" using 4:xtic(1) with linespoints title "Student3"

unset output
