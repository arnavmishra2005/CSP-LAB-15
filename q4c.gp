set terminal pdf 
set output 'q4c.pdf'
set title 'Heart Data'
set datafile separator ","
set xlabel 'Age'
set ylabel 'Blood Pressure'
set key top out box
set style data linespoints
plot 'heart.csv' using 5:xtic(1) title column lc 'red'
