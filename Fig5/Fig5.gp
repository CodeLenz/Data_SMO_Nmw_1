

set tics font ",8.5"
set key font ",8.5"
	set xlabel font ",8.5"
set ylabel font ",8.5"

set xlabel "angels" offset 0,0.6
set ylabel "angels" offset 1.2,0

set logscale y
set xlabel "Frequency [Hz]"
set ylabel "Dynamic Compliance [log-Nm]"
set format y "10^{%T}"

set style line 1 lt 2 lc rgb "black" lw 1 dashtype 1
set style line 2 lt 2 lc rgb "black" lw 1 dashtype 2 
set style line 3 lt 2 lc rgb "black" lw 1 dashtype 3
set style line 4 lt 2 lc rgb "black" lw 1 dashtype 4

plot 'f_zdinflexnd_10.txt' with lines title "V=100%" ls 1, 'f_zdinflexnd_075.txt' with lines title "V=75%" ls 2, 'f_zdinflexnd_05.txt' with lines title "V=50%" ls 3
 
set term pngcairo size 700,350
#set term pngcairo size 800,400
set termoption dashed
set output "Fig5.png"
replot
set term x11	 
