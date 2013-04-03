#!/bin/sh

# Package
PACKAGE="python3"
DNAME="Python3"

# Others
INSTALL_DIR="/usr/local/${PACKAGE}"


case $1 in
    start)
        exit 0
        ;;
    stop)
        exit 0
        ;;
    status)
        exit 0
        ;;
    log)
        echo "${INSTALL_DIR}/install.log"
        exit 0
        ;;
    *)
        exit 1
        ;;
esac