#!/bin/bash

input=$1
output=$2

sed -E 's/^>.*\|([0-9-]+).*GN=([^ ]+).*/>\2_\1/' HK_domain.faa > out_1.fna
