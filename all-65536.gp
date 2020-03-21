#!/usr/bin/gnuplot -persist
#
#    
#    	G N U P L O T
#    	Version 5.2 patchlevel 8    last modified 2019-12-01 
#    
#    	Copyright (C) 1986-1993, 1998, 2004, 2007-2019
#    	Thomas Williams, Colin Kelley and many others
#    
#    	gnuplot home:     http://www.gnuplot.info
#    	faq, bugs, etc:   type "help FAQ"
#    	immediate help:   type "help"  (plot window: hit 'h')
# set terminal x11  nopersist enhanced font "Hack,10"
# set output
unset clip points
set clip one
unset clip two
set errorbars front 1.000000 
unset border
set zdata 
set ydata 
set xdata 
set y2data 
set x2data 
set boxwidth
set style fill  empty border
set style rectangle back fc  bgnd fillstyle   solid 1.00 border lt -1
set style circle radius graph 0.02 
set style ellipse size graph 0.05, 0.03 angle 0 units xy
set dummy x, y
set format x "% h" 
set format y "% h" 
set format x2 "% h" 
set format y2 "% h" 
set format z "% h" 
set format cb "% h" 
set format r "% h" 
set ttics format "% h"
set timefmt "%d/%m/%y,%H:%M"
set angles radians
set tics back
unset grid
unset raxis
set theta counterclockwise right
set style parallel front  lt black linewidth 2.000 dashtype solid
set key title "" center
set key fixed right top vertical Right noreverse enhanced autotitle nobox
set key noinvert samplen 4 spacing 1 width 0 height 0 
set key maxcolumns 0 maxrows 0
set key noopaque
unset key
unset label
unset arrow
set style increment default
unset style line
set style line 1  linecolor rgb "#e41a1c"  linewidth 1.000 dashtype solid pointtype 1 pointsize default
set style line 2  linecolor rgb "#377eb8"  linewidth 1.000 dashtype solid pointtype 1 pointsize default
set style line 3  linecolor rgb "#4daf4a"  linewidth 1.000 dashtype solid pointtype 1 pointsize default
set style line 4  linecolor rgb "#984ea3"  linewidth 1.000 dashtype solid pointtype 1 pointsize default
set style line 5  linecolor rgb "#ff7f00"  linewidth 1.000 dashtype solid pointtype 1 pointsize default
set style line 6  linecolor rgb "#ffff33"  linewidth 1.000 dashtype solid pointtype 1 pointsize default
set style line 7  linecolor rgb "#a65628"  linewidth 1.000 dashtype solid pointtype 1 pointsize default
set style line 8  linecolor rgb "#f781bf"  linewidth 1.000 dashtype solid pointtype 1 pointsize default
unset style arrow
set style histogram clustered gap 2 title textcolor lt -1
unset object
set style textbox transparent margins  1.0,  1.0 border  lt -1 linewidth  1.0
set offsets 0, 0, 0, 0
set pointsize 1
set pointintervalbox 1
set encoding default
unset polar
unset parametric
unset decimalsign
unset micro
unset minussign
set view 60, 30, 1, 1
set view azimuth 0
set rgbmax 255
set samples 100, 100
set isosamples 10, 10
set surface 
unset contour
set cntrlabel  format '%8.3g' font '' start 5 interval 20
set mapping cartesian
set datafile separator whitespace
unset hidden3d
set cntrparam order 4
set cntrparam linear
set cntrparam levels 5
set cntrparam levels auto
set cntrparam firstlinetype 0 unsorted
set cntrparam points 5
set size ratio 1 1,1
set origin 0,0
set style data points
set style function lines
unset xzeroaxis
unset yzeroaxis
unset zzeroaxis
unset x2zeroaxis
unset y2zeroaxis
set xyplane relative 0.5
set tics scale  1, 0.5, 1, 1, 1
set mxtics default
set mytics default
set mztics default
set mx2tics default
set my2tics default
set mcbtics default
set mrtics default
set nomttics
unset xtics
unset ytics
set ztics border in scale 1,0.5 nomirror norotate  autojustify
set ztics  norangelimit autofreq 
unset x2tics
unset y2tics
set cbtics border in scale 1,0.5 mirror norotate  autojustify
set cbtics  norangelimit autofreq 
set rtics axis in scale 1,0.5 nomirror norotate  autojustify
set rtics  norangelimit autofreq 
unset ttics
set title "" 
set title  font "" textcolor lt -1 norotate
set timestamp bottom 
set timestamp "" 
set timestamp  font "" textcolor lt -1 norotate
set trange [ * : * ] noreverse nowriteback
set urange [ * : * ] noreverse nowriteback
set vrange [ * : * ] noreverse nowriteback
set xlabel "" 
set xlabel  font "" textcolor lt -1 norotate
set x2label "" 
set x2label  font "" textcolor lt -1 norotate
set xrange [ * : * ] noreverse writeback
set x2range [ * : * ] noreverse writeback
set ylabel "" 
set ylabel  font "" textcolor lt -1 rotate
set y2label "" 
set y2label  font "" textcolor lt -1 rotate
set yrange [ * : * ] noreverse writeback
set y2range [ * : * ] noreverse writeback
set zlabel "" 
set zlabel  font "" textcolor lt -1 norotate
set zrange [ * : * ] noreverse writeback
set cblabel "" 
set cblabel  font "" textcolor lt -1 rotate
set cbrange [ 0.00000 : 3.00000 ] noreverse writeback
set rlabel "" 
set rlabel  font "" textcolor lt -1 norotate
set rrange [ * : * ] noreverse writeback
unset logscale
unset jitter
set zero 1e-08
set lmargin  -1
set bmargin  -1
set rmargin  -1
set tmargin  -1
set locale "en_US.UTF-8"
set pm3d explicit at s
set pm3d scansautomatic
set pm3d interpolate 1,1 flush begin noftriangles noborder corners2color mean
set pm3d nolighting
set palette positive nops_allcF maxcolors 8 gamma 1.5 color model RGB 
set palette defined ( 0 0 .7 0, 0.3333 1 0 0, 0.6667 1 0.7777777 0,\
     1 0 0 0 )
set colorbox vertical origin screen 0.9, 0.2 size screen 0.05, 0.6 front  noinvert bdefault
unset colorbox
set style boxplot candles range  1.50 outliers pt 7 separation 1 labels auto unsorted
set loadpath 
set fontpath 
set psdir
set fit brief errorvariables nocovariancevariables errorscaling prescale nowrap v5
GNUTERM = "x11"
x = 0.0
unset key
## Last datafile plotted: "grid-65536-256.dat"
set term gif animate delay 10 size 1536,1024 font "Hack, 14" optimize
set out 'all-'.ARG1.'.gif'
do for [i=ARG2:ARG3] {
set multiplot
set size .66,1
set origin 0,0
unset xtics
unset ytics
unset xlabel
unset ylabel
unset border
unset title
set size ratio 1
plot 'pop-65536-'.ARG1.'-'.i.'.dat' u 1:2:3 w p pt 7 lc pal, 'grid-65536-'.ARG1.'.dat' w l lc 'black'
set ytics
set border
set size 0.33,0.33
set origin .66,.66
set size ratio 0
set ylabel 'Infectious'
plot 'infected-65536-'.ARG1.'.dat' u 1:2 w l lc 'black', '' u 1:($1<=i?$2:0):(0) w filledcu lc '#FF0000' notitle
set size 0.33,0.33
set origin .66,.33
set ylabel "Infected"
plot 'infected-65536-'.ARG1.'.dat' u 1:3 w l lc 'black', '' u 1:($1<=i?$3:0):(0) w filledcu lc '#FFAA00' notitle
set size 0.33,0.33
set origin .66,0
set ylabel "Dead"
plot 'infected-65536-'.ARG1.'.dat' u 1:4 w l lc 'black', '' u 1:($1<=i?$4:0):(0) w filledcu lc '#000000' notitle
unset multiplot
}
set out
#    EOF
