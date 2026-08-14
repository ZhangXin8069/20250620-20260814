source ./env.sh

pushd ${install_path}
tar xzf ${file_path}/hdf5-1_14_2.tar.gz && pushd hdfsrc
CC=mpicc CXX=mpicxx FC=mpif90 ./configure --prefix=${HDF5_DIR} --enable-parallel --enable-shared --enable-hl --enable-build-hl-shared
make -j8
make install
popd
# cp ./hl/src/hdf5_hl* include/
# cp ./hl/src/.libs/libhdf5_hl* lib