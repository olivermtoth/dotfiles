# make files for competive programming 
function startcp() {
    names=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m")
    touch in1 out
    for ((i=0;i<$1;i++)); do
        touch  ${names[$i]}.cpp
        cat  ~/.config/cp/sample.cpp > ${names[$i]}.cpp
    done
}

export -f startcp

function makecp(){
    touch in1 out
    cat  ~/.config/cp/sample.cpp > $1.cpp
}

export -f makecp

#test code for competitive programming
function runcp() {
    g++ $1 -O2 -std=c++11 -Wall -o res
    time ./res < in1 > sol
    colordiff  --side-by-side --strip-trailing-cr sol out
    rm res
}

export -f runcp
