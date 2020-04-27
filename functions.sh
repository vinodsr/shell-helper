#!/bin/sh

apps() {
    IFS='/'
    ARG_PATH="$*"
    FULL_PATH=~/apps/$ARG_PATH
    mkdir -p $FULL_PATH
    cd $FULL_PATH
    ls -ltr
    echo "enjoy! \U1F920"
}


dev() {
    IFS='/'
    ARG_PATH="$*"
    FULL_PATH=~/dev/$ARG_PATH
    mkdir -p $FULL_PATH
    cd $FULL_PATH
    ls -ltr
    echo "enjoy! \U1F920"
}

cdx() {
    FULL_PATH=$1
    cd $FULL_PATH 2>/dev/null
    if [ $? -ne 0 ]; then
        mkdir $FULL_PATH 2>/dev/null
        echo "\U1F69C : ${FULL_PATH}"
        cd $FULL_PATH
    else
        ls -ltr
    fi
}
