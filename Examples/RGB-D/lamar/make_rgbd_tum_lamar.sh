# Symlink for rgbd_tum.cc

echo "Copying lamar file to current directory"
original_file=../rgbd_tum.cc
lamar_file=./rgbd_tum.cc

echo "Keeping a backup of the original file"
# If the original file exists, rename it
mv $original_file ${original_file}_backup
cp $lamar_file ..

#Wait for key press
echo "Press any key to continue"
read -n 1 -s
# Make rgbd_tum.cc

echo "Making rgbd_tum"
cd ../../../build || exit
make rgbd_tum
cd - || exit

echo "Reverting to original file"
# Restore the original file
mv -f ${original_file}_backup $original_file

