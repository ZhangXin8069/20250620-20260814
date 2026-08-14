file_path=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
# install_path=$(cd ${file_path}/../lib && pwd) #absolute path
install_path=${HOME}/lib #absolute path
mkdir ${install_path} -p

export PYTHONPATH=${install_path}:$PYTHONPATH
export QUDA_RESOURCE_PATH=${install_path}/quda-develop
export LD_LIBRARY_PATH=${install_path}/quda-develop/build/lib:$LD_LIBRARY_PATH