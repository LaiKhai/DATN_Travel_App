# DATN_Travel_App
## Chuỗi kết nối database
- Thay đổi tên server và tên database trong file *appsetting.json*.
  -     "ConnectionStrings": {"Travel": "Server=DESKTOP-TSICRMO\\SQLSERVER;Database=Travel;Trusted_Connection=True;MultipleActiveResultSets=true"} 
## Tạo Database - chạy lệnh trong package Manager Console
- `Add-migration int`
- `update-database`
