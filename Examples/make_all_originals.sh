cd ../build || exit
echo "Making mono_euroc"
make mono_euroc
echo "Making mono_inertial_euroc"
make mono_inertial_euroc
echo "Making stereo_euroc"
make stereo_euroc
echo "Making stereo_inertial_euroc"
make stereo_inertial_euroc
echo "Making rgbd_tum"
make rgbd_tum
echo "Making rgbd_inertial_realsense_D435i"
make rgbd_inertial_realsense_D435i
cd - || exit

