#!/bin/sh

mkdir -p build

if [ -n $(which g++) ]; then
    echo g++ nprime.cpp -O3 -o build/nprime-c++-O3
    g++ nprime.cpp -O3 -o build/nprime-c++-O3
else
    echo please install g++
fi

if [ -n $(which em++) ]; then
    echo em++ nprime.cpp -o build/nprime-wasm
    em++ nprime.cpp -o build/nprime-wasm.js
else
    echo please install emscripten
fi

if [ -n $(which go) ]; then
    echo go build -o build/nprime-go nprime.go
    go build -o build/nprime-go nprime.go
else
    echo please install go
fi

if [ -n $(which nim ) ]; then
    echo nim c -x:off --opt:speed -d:release nprime.nim
    nim c -x:off --opt:speed -d:release nprime.nim
else
    echo please install nim
fi

if [ -n $(which javac) ]; then
    echo javac -d build nprime.java
    javac -d build nprime.java
else
    echo please install java sdk
fi

if [ -n $(which rustc) ]; then
    echo rustc nprime.rs -O -o build/nprime-rust
    rustc nprime.rs -O -o build/nprime-rust
else
    echo please install rust compiler
fi
