#!/bin/bash
# This script calculates simple interest given principal,
# annual rate of interest and time period in years.

# Do not use this in production. Sample purpose only.

# Author: mad-codes7

# Input:
# p, principal amount
# t, time period in years
# r, annual rate of interest

# Output:
# simple interest = p*t*r/100

echo "Enter the principal:"
read p
echo "Enter rate of interest per year:"
read r
echo "Enter time period in years:"
read t

s=$(awk -v p="$p" -v t="$t" -v r="$r" 'BEGIN { printf "%.2f", (p * t * r) / 100 }')

echo "The simple interest is: "
echo "$s"
