# Symlink for stereo_inertial_euroc.cc

echo "Copying lamar file to current directory"
original_file=../stereo_inertial_euroc.cc
lamar_file=./stereo_inertial_euroc.cc

echo "Keeping a backup of the original file"
# If the original file exists, rename it
mv $original_file ${original_file}_backup
cp $lamar_file ..

#Wait for key press
echo "Press any key to continue"
read -n 1 -s
# Make stereo_inertial_euroc.cc

echo "Making stereo_inertial_euroc"
cd ../../../build || exit
make stereo_inertial_euroc
cd - || exit

echo "Reverting to original file"
# Restore the original file
mv -f ${original_file}_backup $original_file

