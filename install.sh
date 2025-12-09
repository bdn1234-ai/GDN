%%bash
# 1. Tạo môi trường Python 3.7 (thêm -y để tự động đồng ý)
conda create -n gdn_env python=3.7 -y

# 2. Kích hoạt môi trường (cần thiết lập shell cho conda trong script bash)
source activate gdn_env

# 3. Cài đặt PyTorch 1.5.1 KHỚP với CUDA 10.2
# Lưu ý: Phải thêm cudatoolkit=10.2 để tương thích với các file wheel bên dưới
conda install pytorch==1.5.1 torchvision==0.6.1 cudatoolkit=10.2 -c pytorch -y

# 4. Cài đặt các thư viện vệ tinh (Links đã sửa thành 1.5.1+cu102 như bạn đã làm)
pip install torch-scatter -f https://pytorch-geometric.com/whl/torch-1.5.1+cu102.html
pip install torch-sparse -f https://pytorch-geometric.com/whl/torch-1.5.1+cu102.html
pip install torch-cluster -f https://pytorch-geometric.com/whl/torch-1.5.1+cu102.html
pip install torch-spline-conv -f https://pytorch-geometric.com/whl/torch-1.5.1+cu102.html
pip install torch-geometric==1.5.0

# 5. Chạy code (lệnh python trong run.sh sẽ dùng python của gdn_env)
bash run.sh cpu msl
