

set tics font ",8.5"
set key font ",8.5"
set xlabel font ",8.5"
set ylabel font ",8.5"

set xlabel "angels" offset 0,0.6
set ylabel "angels" offset 1.2,0

set xrange [400:1000]
set yrange [3E-6:8E-5]

set logscale y
set xlabel "Frequency [Hz]"
set ylabel "Displacement Norm [log-m]"
set format y "10^{%T}"

set style line 1 lt 2 lc rgb "black" lw 1 dashtype 1
set style line 2 lt 2 lc rgb "black" lw 1 dashtype 2 
set style line 3 lt 2 lc rgb "black" lw 1 dashtype 3
set style line 4 lt 2 lc rgb "black" lw 1 dashtype 4

set arrow from 700,graph 0 to 700,graph 1 nohead lt 0

plot 'NL.txt' with lines title "Norm" ls 1, \
	 'PAR.txt' with lines title "ActPow" ls 3, \
	 1/0 t "700Hz" lt 0

set term pngcairo size 700,350
set termoption dashed
set output "Fig28.png"
replot
set term x11	 
