
.PHONY: nci scorep ompi2 impi

export OASIS_HOME=$(shell pwd)
SHELL=/bin/bash

nci scorep ompi2 ompi3 impi:
	echo "include $(shell pwd)/util/make_dir/make.$@" > util/make_dir/make.inc
	source ./util/make_dir/config.$@ && cd util/make_dir && make -j 4 -f TopMakefileOasis3 

ubuntu:
	echo "include $(shell pwd)/util/make_dir/make.ubuntu" > util/make_dir/make.inc
	cd util/make_dir && make -j 4 -f TopMakefileOasis3 
