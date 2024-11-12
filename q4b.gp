set terminal pdf 
set output 'q4b.pdf'
set title 'Heart Data'
set datafile separator ","
set xlabel 'Age'
set key top out box
set ylabel 'Blood Pressure'
plot 'heart.csv' using 3:xtic(1) title column lc 'red'
