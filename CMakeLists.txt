cmake_minimum_required(VERSION 3.10)
project(matmul)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mavx2 -mfma")

# ensure no optimization
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O0")

add_subdirectory(src/naive)
add_subdirectory(src/sse)
