#!/bin/bash

MATRIX_SIZES=(100 1000 10000)

mkdir build
cd build
cmake ..
make
cd ..

# Run the benchmarks
echo ""
echo "--- RUNNING BENCHMARKS ---"
echo ""

for size in ${MATRIX_SIZES[@]}; do
    echo "- Running benchmarks for matrix size: $size -"
    # naive
    ./build/src/naive/matmul_naive $size
    # sse 
    ./build/src/sse/matmul_sse $size
    echo ""
done
