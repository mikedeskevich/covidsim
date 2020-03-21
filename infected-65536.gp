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
set border 31 front lt black linewidth 1.000 dashtype solid
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
unset label
unset arrow
set style increment default
unset style line
set style line 1  linecolor rgb "#1b9e77"  linewidth 1.000 dashtype solid pointtype 1 pointsize default
set style line 2  linecolor rgb "#d95f02"  linewidth 1.000 dashtype solid pointtype 1 pointsize default
set style line 3  linecolor rgb "#7570b3"  linewidth 1.000 dashtype solid pointtype 1 pointsize default
set style line 4  linecolor rgb "#e7298a"  linewidth 1.000 dashtype solid pointtype 1 pointsize default
set style line 5  linecolor rgb "#66a61e"  linewidth 1.000 dashtype solid pointtype 1 pointsize default
set style line 6  linecolor rgb "#e6ab02"  linewidth 1.000 dashtype solid pointtype 1 pointsize default
set style line 7  linecolor rgb "#a6761d"  linewidth 1.000 dashtype solid pointtype 1 pointsize default
set style line 8  linecolor rgb "grey40"  linewidth 1.000 dashtype solid pointtype 1 pointsize default
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
set size ratio 0 1,1
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
set xtics border in scale 1,0.5 mirror norotate  autojustify
set xtics  norangelimit autofreq 
set ytics border in scale 1,0.5 mirror norotate  autojustify
set ytics  norangelimit autofreq 
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
set xlabel "time" 
set xlabel  font "" textcolor lt -1 norotate
set x2label "" 
set x2label  font "" textcolor lt -1 norotate
set xrange [ * : * ] noreverse writeback
set x2range [ * : * ] noreverse writeback
set ylabel "people" 
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
set cbrange [ * : * ] noreverse writeback
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
set palette defined ( 0 0.8941 0.102 0.1098, 0.1429 0.2157 0.4941 0.7216, 0.2857 0.302 0.6863 0.2902,\
     0.4286 0.5961 0.3059 0.6392, 0.5714 1 0.498 0, 0.7143 1 1 0.2, 0.8571 0.651 0.3373 0.1569,\
     1 0.9686 0.5059 0.749 )
set colorbox default
set colorbox vertical origin screen 0.9, 0.2 size screen 0.05, 0.6 front  noinvert bdefault
set style boxplot candles range  1.50 outliers pt 7 separation 1 labels auto unsorted
set loadpath 
set fontpath 
set psdir
set fit brief errorvariables nocovariancevariables errorscaling prescale nowrap v5
GNUTERM = "x11"
## Last datafile plotted: "infected-65536-4.dat"
set term png enhanced size 1024,1024 linewidth 3 font "Hack,14"
set out 'infectious.png'
col = 2
set title 'Number Infectious'
plot 'infected-65536-65536.dat' u 1:col w l ls 1 title '[a whole city] 1x65536', 'infected-65536-16384.dat' u 1:col w l ls 2 title '4x16384', 'infected-65536-4096.dat' u 1:col w l ls 3 title '16x4096', 'infected-65536-1024.dat' u 1:col w l ls 4 title '64x1024', 'infected-65536-256.dat' u 1:col w l ls 5 title '256x256', 'infected-65536-64.dat' u 1:col w l ls 6 title '1024x64', 'infected-65536-16.dat' u 1:col w l ls 7 title '4096x16', 'infected-65536-4.dat' u 1:col w l ls 8 title '[lots of families] 16384x4'
set out 'infected.png'
col = 3
set title 'Number Infected'
plot 'infected-65536-65536.dat' u 1:col w l ls 1 title '[a whole city] 1x65536', 'infected-65536-16384.dat' u 1:col w l ls 2 title '4x16384', 'infected-65536-4096.dat' u 1:col w l ls 3 title '16x4096', 'infected-65536-1024.dat' u 1:col w l ls 4 title '64x1024', 'infected-65536-256.dat' u 1:col w l ls 5 title '256x256', 'infected-65536-64.dat' u 1:col w l ls 6 title '1024x64', 'infected-65536-16.dat' u 1:col w l ls 7 title '4096x16', 'infected-65536-4.dat' u 1:col w l ls 8 title '[lots of families] 16384x4'
set out 'dead.png'
col = 4
set title 'Number Dead'
plot 'infected-65536-65536.dat' u 1:col w l ls 1 title '[a whole city] 1x65536', 'infected-65536-16384.dat' u 1:col w l ls 2 title '4x16384', 'infected-65536-4096.dat' u 1:col w l ls 3 title '16x4096', 'infected-65536-1024.dat' u 1:col w l ls 4 title '64x1024', 'infected-65536-256.dat' u 1:col w l ls 5 title '256x256', 'infected-65536-64.dat' u 1:col w l ls 6 title '1024x64', 'infected-65536-16.dat' u 1:col w l ls 7 title '4096x16', 'infected-65536-4.dat' u 1:col w l ls 8 title '[lots of families] 16384x4'
set out
