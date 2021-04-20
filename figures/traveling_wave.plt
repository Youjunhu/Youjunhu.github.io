set term gif size 350,262 animate delay 15
set output "traveling_wave.gif"
#set output "standing_wave.gif"
set title  "traveling_wave"
#set title  "standing_wave"
set samples 1000
set xrange [0:4*pi]
#set yrange [-1:1]
set yrange [-2:2]
unset key
#set tics textcolor rgb "orange"
#set border lc rgb "orange"
#set grid lc rgb "orange"
set grid lc rgb "grey"
#set size ratio 0 0.7,0.7 

do for [i=0:40] {
plot sin(x-i*pi/20) lw 3 lc rgb "green" notitle
#plot sin(x+i*pi/20)+sin(x-i*pi/20) lw 3 lc rgb "green" notitle
}

set output
