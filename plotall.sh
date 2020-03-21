#!/usr/bin/bash

cd leak000
gnuplot -c ../infected-65536.gp &
cd ..

cd leak001
gnuplot -c ../infected-65536.gp &
cd ..

cd leak010
gnuplot -c ../infected-65536.gp &
cd ..

cd leak100
gnuplot -c ../infected-65536.gp &
cd ..

wait
