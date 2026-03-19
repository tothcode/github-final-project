#!/bin/bash

echo "=== Simple Interest Calculator ==="

read -p "Principal amount: " principal
read -p "Rate of interest (%): " rate
read -p "Time period (years): " time

si=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total=$(echo "scale=2; $principal + $si" | bc)

echo ""
echo "Simple Interest : $si"
echo "Total Amount    : $total"
