#!/bin/bash
destdir=/opt/xeoma/

while [ "$1" != "" ]; do
    case $1 in
        -d | --destination )    shift
                                destdir=$1
                                ;;
        * )                     usage
                                exit 1
    esac
    shift
done

tar -xzvf /tmp/xeoma/xeoma_linux64.tgz -C $destdir
#echo $destdir