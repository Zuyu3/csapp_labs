generate (){
    echo "$1"
    ./hex2raw < ./sol/pre"$1" > ./sol/attack"$1"
}

runc (){
    echo "$1"
    ./ctarget -qi ./sol/attack"$1"
}

runr (){
    echo "$1"
    ./rtarget -qi ./sol/attack"$1"
}

asm2mach (){
    gcc -c asm.s
    objdump -d asm.o > asm.d
    rm asm.o
}