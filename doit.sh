#!/bin/bash

DOCKER=${DOCKER:=docker}

$DOCKER build --platform=amd64 -t inet6_hashfn-sim-x86-64 -f container/Dockerfile container/

r () {
	$DOCKER run -it --rm --platform=amd64 -v $PWD:/mnt inet6_hashfn-sim-x86-64 "$@"
}

for f in net6hash-hsiphash.c net6hash-jhash-faddr.c net6hash-jhash-initial-proposal.c net6hash-orig.c; do
	r bash -x -c "gcc -march=x86-64-v2 -O2 -c /mnt/$f -S -o /mnt/$f-x86-64v2.s"
	r bash -x -c "cat /mnt/$f-x86-64v2.s | llvm-mca --march x86-64 --mcpu=skylake --timeline --timeline-max-cycles=1000 --iterations=1 > /mnt/$f-skylake.txt"
done
