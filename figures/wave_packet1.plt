set term gif size 350,262 animate delay 15
set output "wave_packet.gif"
set samples 1000
set xrange [0:20]
set title  "wave packet with Vg>Vp"
unset key
set grid lc rgb "grey"

dx=sqrt(2.)
k0=5
omega0=pi/20. #omega0/k0 is the phase velocity
vg=pi/20. #group velocity
do for [i=0:100] {
t=i*1.0
plot  exp(-(x-4-vg*t)**2/(4.*dx**2))*cos(k0*x-omega0*t) lw 3 lc rgb "green" notitle,  exp(-(x-4-vg*t)**2/(4.*dx**2)) lw 3 lc rgb "blue" notitle,-exp(-(x-4-vg*t)**2/(4.*dx**2)) lw 3 lc rgb "blue" notitle

}

set output
