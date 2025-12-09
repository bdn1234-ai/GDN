# 1. Tạo môi trường Python 3.7 bằng Conda
conda create -n gdn_env python=3.7 -y

# 2. Kích hoạt môi trường và cài đặt PyTorch 1.5.1
source activate gdn_env
pip install torch==1.5.1 torchvision==0.6.1 -f https://download.pytorch.org/whl/cu102/torch_stable.html

# 3. Cài đặt các thư viện vệ tinh (Sửa link version thành 1.5.1 như đã bàn)
pip install torch-scatter -f https://pytorch-geometric.com/whl/torch-1.5.1+cu102.html
pip install torch-sparse -f https://pytorch-geometric.com/whl/torch-1.5.1+cu102.html
pip install torch-cluster -f https://pytorch-geometric.com/whl/torch-1.5.1+cu102.html
pip install torch-spline-conv -f https://pytorch-geometric.com/whl/torch-1.5.1+cu102.html
pip install torch-geometric==1.5.0

# 4. Chạy code của bạn (Ví dụ: chạy file run.sh)
# Lưu ý: Mọi lệnh chạy code dự án phải nằm trong cùng block này hoặc phải activate lại môi trường
bash run.sh cpu msl
