#!/bin/sh

mkdir -p build

echo g++ nprime.cpp -O3 -o build/nprime-c++-O3
g++ nprime.cpp -O3 -o build/nprime-c++-O3

if [ -n $(which em++) ]; then
    echo em++ nprime.cpp -o build/nprime-wasm
    em++ nprime.cpp -o build/nprime-wasm.js
fi

if [ -n $(which go) ]; then
    echo go build nprime.go -o build/nprime-go
    go build nprime.go -o build/nprime-go
fi

if [ -n $(which go) ]; then
    echo nim c -x:off --opt:speed -d:release nprime.nim
    nim c -x:off --opt:speed -d:release nprime.nim
fi

if [ -n $(which javac) ]; then
    echo javac -d build nprime.java
    javac -d build nprime.java
fi

if [ -n $(which rustc) ]; then
    echo rustc nprime.rs -O -o build/nprime-rust
    rustc nprime.rs -O -o build/nprime-rust
fi
