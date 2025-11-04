# Quản lý Hạ tầng AWS bằng Terraform

Dự án này cung cấp các cấu hình Terraform để tự động hóa việc triển khai một hạ tầng AWS bảo mật, bao gồm VPC, các EC2 instances (công khai và riêng tư), và các Security Groups (nhóm bảo mật) liên quan.

## 📋 Yêu cầu tiên quyết

Trước khi bắt đầu, hãy đảm bảo bạn đã cài đặt và cấu hình các công cụ sau:

* [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli) (phiên bản 1.0.0 trở lên)
* [AWS CLI](https://aws.amazon.com/cli/)
* Đã cấu hình AWS credentials (chạy `aws configure` hoặc sử dụng biến môi trường).

---

## 🚀 Hướng dẫn Triển khai

Làm theo các bước sau để triển khai hạ tầng:

### Bước 1: Tải dự án (Clone)

Clone repository này về máy của bạn:

```sh
git clone <URL_CUA_REPOSITORY>
cd <TEN_THU_MUC_DU_AN>
```

### Bước 2: Khởi tạo (Init)
Khởi tạo thư mục làm việc và tải về các providers cần thiết:

```sh
terraform init
```

### Bước 3: Lên kế hoạch (Plan)
Xem trước các thay đổi mà Terraform sẽ thực hiện. Bước này giúp đảm bảo cấu hình của bạn là chính xác trước khi áp dụng.

```sh
terraform plan
```
Một kế hoạch chi tiết về các tài nguyên sẽ được tạo/thay đổi/xóa sẽ được hiển thị.

### Bước 4: Áp dụng (Apply)
Triển khai các tài nguyên lên AWS. Bạn sẽ cần xác nhận bằng cách gõ yes khi được hỏi.

```sh
terraform apply
```

### Bước 5: Xác minh (Verify)
Sau khi apply hoàn tất, Terraform sẽ xuất ra các thông tin cần thiết (như Public IP của EC2).

Sử dụng key-pair của bạn để SSH đến Public EC2.

Từ Public EC2, SSH đến Private EC2 (sử dụng private key đã được forward hoặc lưu trên Bastion Host).

Nếu thành công, hạ tầng đã được triển khai đúng cách và đáp ứng các yêu cầu bảo mật.


## 🧹 Dọn dẹp (Destroy)
Để tránh phát sinh chi phí không mong muốn, hãy hủy toàn bộ tài nguyên đã tạo khi bạn không còn sử dụng chúng:

```sh
terraform destroy
```
Bạn cũng sẽ cần xác nhận bằng cách gõ `yes`.

