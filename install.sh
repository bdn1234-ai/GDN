%%bash
conda create -n gdn_env python=3.7 -y

source activate gdn_env

conda install pytorch==1.5.1 torchvision==0.6.1 cudatoolkit=10.2 -c pytorch -y

pip install torch-scatter -f https://pytorch-geometric.com/whl/torch-1.5.1+cu102.html
pip install torch-sparse -f https://pytorch-geometric.com/whl/torch-1.5.1+cu102.html
pip install torch-cluster -f https://pytorch-geometric.com/whl/torch-1.5.1+cu102.html
pip install torch-spline-conv -f https://pytorch-geometric.com/whl/torch-1.5.1+cu102.html
pip install torch-geometric==1.5.0

