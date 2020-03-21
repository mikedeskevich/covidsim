#!/usr/bin/bash

cd leak000
gnuplot -c ../pop-65536.gp 65536 0 70 &
gnuplot -c ../pop-65536.gp 16384 0 70 &
gnuplot -c ../pop-65536.gp 4096 0 77 &
gnuplot -c ../pop-65536.gp 1024 0 70 &
gnuplot -c ../pop-65536.gp 256 0 69 &
gnuplot -c ../pop-65536.gp 64 0 60 &
gnuplot -c ../pop-65536.gp 16 0 51 &
gnuplot -c ../pop-65536.gp 4 0 38 &
cd ..

cd leak001
gnuplot -c ../pop-65536.gp 65536 0 69 &
gnuplot -c ../pop-65536.gp 16384 0 70 &
gnuplot -c ../pop-65536.gp 4096 0 76 &
gnuplot -c ../pop-65536.gp 1024 0 80 &
gnuplot -c ../pop-65536.gp 256 0 98 &
gnuplot -c ../pop-65536.gp 64 0 232 &
gnuplot -c ../pop-65536.gp 16 0 163 &
gnuplot -c ../pop-65536.gp 4 0 54 &
cd ..

cd leak010
gnuplot -c ../pop-65536.gp 65536 0 69 &
gnuplot -c ../pop-65536.gp 16384 0 71 &
gnuplot -c ../pop-65536.gp 4096 0 67 &
gnuplot -c ../pop-65536.gp 1024 0 69 &
gnuplot -c ../pop-65536.gp 256 0 85 &
gnuplot -c ../pop-65536.gp 64 0 86 &
gnuplot -c ../pop-65536.gp 16 0 157 &
gnuplot -c ../pop-65536.gp 4 0 510 &
cd ..

cd leak100
gnuplot -c ../pop-65536.gp 65536 0 67 &
gnuplot -c ../pop-65536.gp 16384 0 70 &
gnuplot -c ../pop-65536.gp 4096 0 71 &
gnuplot -c ../pop-65536.gp 1024 0 64 &
gnuplot -c ../pop-65536.gp 256 0 67 &
gnuplot -c ../pop-65536.gp 64 0 71 &
gnuplot -c ../pop-65536.gp 16 0 77 &
gnuplot -c ../pop-65536.gp 4 0 99 &
cd ..

wait
