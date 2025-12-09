# Cài đặt các thư viện phụ trợ cho PyTorch 1.5.1 + CUDA 10.2
!pip install torch-scatter -f https://pytorch-geometric.com/whl/torch-1.5.1+cu102.html
!pip install torch-sparse -f https://pytorch-geometric.com/whl/torch-1.5.1+cu102.html
!pip install torch-cluster -f https://pytorch-geometric.com/whl/torch-1.5.1+cu102.html
!pip install torch-spline-conv -f https://pytorch-geometric.com/whl/torch-1.5.1+cu102.html

# Cài đặt torch-geometric đúng phiên bản dự án yêu cầu
!pip install torch-geometric==1.5.0
