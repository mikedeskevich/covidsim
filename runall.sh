#!/usr/bin/bash

cd leak000
rm *.dat
../covidsim.pl 0.000 &
cd ..

cd leak001
rm *.dat
../covidsim.pl 0.001 &
cd ..

cd leak010
rm *.dat
../covidsim.pl 0.010 &
cd ..

cd leak100
rm *.dat
../covidsim.pl 0.100 &
cd ..

wait
