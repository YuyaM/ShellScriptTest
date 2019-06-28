#!/bin/bash
# How to logging

# X
aaa 2>&1 > log1.txt

# O
bbb > log2.txt 2>&1

# O
ccc 2>&1 | tee log3.txt

# X
ddd | tee log4.txt 2>&1

# O
eee << EOG > log5.txt 2>&1
100
EOG

# O
fff << EOG 2>&1 | tee log6.txt
100
EOG

# X
ggg << EOG 2>&1 > log7.txt
100
EOG

# X
hhh << EOG | tee log8.txt 2>&1 
100
EOG


echo "#########################"
cat log*
