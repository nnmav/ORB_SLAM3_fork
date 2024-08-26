#!/bin/bash

echo "Copying new mono_euroc.cc file for Lamar"
cp mono_euroc.cc ..
wait

echo "Press any key to continue"
read -n 1 -s

echo "Making mono_euroc"
cd ../../../build || exit
make mono_euroc
cd - || exit

echo "Reverting to original file"
cp mono_euroc_original.cc ../mono_euroc.cc

