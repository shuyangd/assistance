#!/bin/bash


for ((i=3;i<10;i++));
do
   let G1=10**${i}
   let G2=($G1)*5
   #echo $G1
   ./driver-reduce --trials 5 --particles 40000000 --grainsize $G1 --threads 4
   ./driver-reduce --trials 5 --particles 40000000 --grainsize $G2 --threads 4
done
