#!/bin/bash

./driver-reduce --trials 5 --particles 40000000 --grainsize 2
./driver-reduce --trials 5 --particles 40000000 --grainsize 5
./driver-reduce --trials 5 --particles 40000000 --grainsize 20
./driver-reduce --trials 5 --particles 40000000 --grainsize 30
./driver-reduce --trials 5 --particles 40000000 --grainsize 70

for ((i=0;i<10;i++));
do
   let G1=10**${i}
   let G2=($G1)*5
   #echo $G1
   ./driver-reduce --trials 5 --particles 40000000 --grainsize $G1
   ./driver-reduce --trials 5 --particles 40000000 --grainsize $G2
done