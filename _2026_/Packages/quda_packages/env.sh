file_path=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
# install_path=$(cd ${file_path}/../lib && pwd) #absolute path
install_path=${HOME}/lib #absolute path
mkdir ${install_path} -p