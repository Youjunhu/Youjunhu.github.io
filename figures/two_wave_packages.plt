set term gif size 350,262 animate delay 15
set output "two_wave_packages.gif"
#set output "standing_wave.gif"
set samples 1000
set xrange [0:20]
#set yrange [-1:1]
set yrange [-1:3]
#set title  "traveling_wave"
set title  "linear wave interaction"
unset key
#set tics textcolor rgb "orange"
#set border lc rgb "orange"
#set grid lc rgb "orange"
set grid lc rgb "grey"
#set size ratio 0 0.7,0.7 

do for [i=0:100] {

plot  exp(-((x-4)-i*pi/20)**2)+exp(-((x-16)+i*pi/20)**2) lw 3 lc rgb "green" notitle

}

set output
