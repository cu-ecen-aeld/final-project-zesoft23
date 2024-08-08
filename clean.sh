#!/bin/sh
#Cleans the buildroot directory

this_directory=$(dirname "$0")
cd $this_directory/buildroot
make distclean
cd ..
