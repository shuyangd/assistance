#!/bin/bash

./driver-compute --trials 5 --particles 10000000 --grainsize 2
./driver-compute --trials 5 --particles 10000000 --grainsize 5
./driver-compute --trials 5 --particles 10000000 --grainsize 20
./driver-compute --trials 5 --particles 10000000 --grainsize 30
./driver-compute --trials 5 --particles 10000000 --grainsize 70

for ((i=0;i<10;i++));
do
   let G1=10**${i}
   let G2=($G1)*5
   #echo $G1
   ./driver-compute --trials 5 --particles 10000000 --grainsize $G1
   ./driver-compute --trials 5 --particles 10000000 --grainsize $G2
done