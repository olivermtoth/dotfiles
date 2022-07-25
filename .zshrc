alias nv ="nvim"

# make files for competive programming
function olistart() {
    names=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m")
    for ((i=0;i<$1;i++)); do
        touch  ${names[$i]}.cpp
        cat  ~/.config/cp/sample.cpp > ${names[$i]}.cpp
    done
}


function olicp(){
    cat  ~/.config/cp/sample.cpp > $1.cc
	git add $1.cc
}


#test code for competitive programming
function olirun() {
    g++ $1.cc -O2 -std=c++17 -Wall
	./a.out
	rm a.out
}

#make dir and goto dir
function mkcp(){
	mkdir $1 && cd $1
}
