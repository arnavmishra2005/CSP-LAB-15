# histogram.gp
set terminal pdfcairo enhanced font 'Verdana,10'
set output 'histogram.pdf'

set title "Marks obtained by Students"
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
set xlabel "Courses"
set ylabel "Marks"
set xtics rotate by -45
set grid ytics

# Move the legend (key) outside the plot area
set key outside right

plot "marks.dat" using 2:xtic(1) title "Student1", \
     "marks.dat" using 3:xtic(1) title "Student2", \
     "marks.dat" using 4:xtic(1) title "Student3"

unset output
