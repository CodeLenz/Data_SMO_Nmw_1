

set tics font ",8.5"
set key font ",8.5"
set xlabel font ",8.5"
set ylabel font ",8.5"

set xlabel "angels" offset 0,0.6
set ylabel "angels" offset 1.2,0

set xrange [0:1000]
set yrange [1E-5:1E-2]

set logscale y
set xlabel "Frequency [Hz]"
set ylabel "Displacement Norm [log-m]"
set format y "10^{%T}"

set style line 1 lt 2 lc rgb "black" lw 1 dashtype 1
set style line 2 lt 2 lc rgb "black" lw 1 dashtype 2 
set style line 3 lt 2 lc rgb "black" lw 1 dashtype 3
set style line 4 lt 2 lc rgb "black" lw 1 dashtype 4

set arrow from 365,graph 0 to 365,graph 1 nohead lt 0
set arrow from 700,graph 0 to 700,graph 1 nohead lt 0

plot '365.txt' with lines title "Norm, 365Hz" ls 1, \
	 '700.txt' with lines title "Norm, 700Hz" ls 2, \
	 1/0 t "365Hz" lt 0, \
	 1/0 t "700Hz" lt 0

set term pngcairo size 700,350
set termoption dashed
set output "Fig14.png"
replot
set term x11	 
