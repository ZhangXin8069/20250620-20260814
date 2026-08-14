source ./env.sh

pushd ${install_path}
# python -m pip install -U mpi4py cupy Cython typing_extensions #cupy-cuda11x:rely on `nvcc --version`,more in https://docs.cupy.dev/en/stable/install.html
tar xzf ${file_path}/PyQuda-master.tar.gz && pushd PyQuda-master
# python -m pip install -U .
python setup.py build_ext --inplace
# python tests/test.clover.py
popd
popd
# note
## change lib/pyquda/utils/source.py and lib/pyquda/field.py
## as
## from typing import List, Union
## from typing_extensions import Literal
## to debug
