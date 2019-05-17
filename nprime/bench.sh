#!/bin/sh

n=$1
if [ -z $n ]; then
    n=10000
fi

echo print the NO. $n prime

if [ -x build/nprime-c++-O3 ]; then
    echo run g++
    echo build/nprime-c++-O3 $n    
    time build/nprime-c++-O3 $n
    echo
fi

if [ -n $(which node) ] && [ -f build/nprime-wasm.js ]; then
    echo run wasm
    echo node build/nprime-wasm.js $n    
    time node build/nprime-wasm.js $n
    echo
fi

if [ -x build/nprime-go ]; then
    echo run go
    echo build/nprime-go $n
    time build/nprime-go $n    
    echo
fi

if [ -x build/nprime-nim ]; then
    echo run nim
    echo build/nprime-nim $n
    time build/nprime-nim $n    
    echo
fi

if [ -n $(which java) ]; then
    echo run java
    echo java -cp build nprime $n    
    time java -cp build nprime $n
    echo
fi

if [ -x build/nprime-rust ]; then
    echo run rust
    echo build/nprime-rust $n
    time build/nprime-rust $n
    echo
fi

if [ -n $(which node) ]; then
    echo run javascript
    echo node nprime.js $n    
    time node nprime.js $n
    echo
fi

if [ -n $(which dart) ]; then
    echo run dart
    echo dart nprime.dart $n    
    time dart nprime.dart $n
    echo
fi

if [ -n $(which python) ]; then
    # almost impossible to miss a python installation
    echo run python
    echo python nprime.py $n
    time python nprime.py $n
fi

