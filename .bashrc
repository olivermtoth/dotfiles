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

#
# # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

export -f ex
