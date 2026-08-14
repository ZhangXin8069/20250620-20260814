file_path=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
install_path="$HOME/lib" #absolute path
mkdir ${install_path} -p

export HDF5_DIR=${install_path}/hdfsrc
export PATH=${HDF5_DIR}/bin:$PATH
export HDF5_INCLUDE_PATH=${HDF5_DIR}/include
export LD_LIBRARY_PATH=${HDF5_DIR}/lib:$LD_LIBRARY_PATH