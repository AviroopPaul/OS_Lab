#!/bin/sh

for i in {A..E}
do
for j in $(eval echo "{A..$i}")
do
echo -n "$j"
done
echo
done
