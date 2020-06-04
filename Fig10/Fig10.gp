

set tics font ",8.5"
set key font ",8.5"
set xlabel font ",8.5"
set ylabel font ",8.5"

set xlabel "angels" offset 0,0.6
set ylabel "angels" offset 1.2,0

set xrange [0:600]
set yrange [1E-6:1E-2]

set logscale y
set xlabel "Frequency [Hz]"
set ylabel "Displacement Norm [log-m]"
set format y "10^{%T}"

set style line 1 lt 2 lc rgb "black" lw 1 dashtype 1
set style line 2 lt 2 lc rgb "black" lw 1 dashtype 2 
set style line 3 lt 2 lc rgb "black" lw 1 dashtype 3
set style line 4 lt 2 lc rgb "black" lw 1 dashtype 4

set arrow from 365,graph 0 to 365,graph 1 nohead lt 0

plot '365_m2.txt' with lines title "m=2" ls 1, \
	 '365_m4.txt' with lines title "m=4" ls 2, \
	 '365_m8.txt' with lines title "m=8" ls 3, \
	 '365_m12.txt' with lines title "m=12" ls 4, \
	 1/0 t "365Hz" lt 0

set term pngcairo size 700,350
set termoption dashed
set output "Fig10.png"
replot
set term x11	 
