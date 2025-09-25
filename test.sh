#!/bin/bash

# Kompilasi
gcc main.c -o main || { echo "Kompilasi gagal"; exit 1; }

# Test case 1: input -5
OUTPUT1=$(echo "-5" | ./main | tr -d '\r' | tail -n 1)
if [[ "$OUTPUT1" != *"negatif"* && "$OUTPUT1" != *"Negatif"* ]]; then
  echo "Test 1 gagal: -5 harus negatif"
  exit 1
fi

# Test case 2: input 0
OUTPUT2=$(echo "0" | ./main | tr -d '\r' | tail -n 1)
if [[ "$OUTPUT2" != *"nol"* && "$OUTPUT2" != *"Nol"* ]]; then
  echo "Test 2 gagal: 0 harus nol"
  exit 1
fi

# Test case 3: input 7
OUTPUT3=$(echo "7" | ./main | tr -d '\r' | tail -n 1)
if [[ "$OUTPUT3" != *"positif"* && "$OUTPUT3" != *"Positif"* ]]; then
  echo "Test 3 gagal: 7 harus positif"
  exit 1
fi

echo "Semua tes lulus"
exit 0
