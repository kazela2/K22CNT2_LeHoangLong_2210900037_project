<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Quan Ly Nhan Su</title>
    <style>
        /* Căn chỉnh cho toàn bộ trang */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-size: cover; /* Làm hình nền bao phủ toàn bộ màn hình */
            background-position: center;
            background-attachment: fixed; /* Hình nền cố định khi cuộn */
        }

        /* Cải tiến thanh menu */
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            background-color: rgba(51, 51, 51, 0.8); /* Thanh menu mờ đi để dễ nhìn */
            display: flex;
            justify-content: center;
            width: 100%;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2); /* Bóng đổ cho thanh menu */
            padding: 10px 0; /* Thêm khoảng cách giữa các mục */
        }

        li {
            float: left;
            margin: 0 15px; /* Thêm khoảng cách giữa các mục */
        }

        li a {
            display: block;
            color: black;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 16px;
            border-radius: 10px;
            transition: all 0.3s ease; /* Thêm hiệu ứng hover mượt mà */
        }

        li a:hover {
            background-color: #111;
            transform: scale(1.1); /* Phóng to khi hover */
        }

        /* Cải thiện giao diện chính */
        .content {
            background-color: rgba(255, 255, 255, 0.9); /* Màu nền mờ */
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 1200px;
            margin: 20px;
            text-align: center;
            font-size: 18px;
            color: #333;
            border: 2px solid #ddd; /* Thêm đường viền cho giao diện */
        }

        h1 {
            font-size: 36px;
            color: #2c3e50;
            margin-bottom: 20px;
        }

        p {
            margin-bottom: 20px;
            font-size: 18px;
            line-height: 1.6;
        }

        .footer {
            text-align: center;
            font-size: 14px;
            padding: 10px;
            background-color: rgba(0, 0, 0, 0.7);
            color: white;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        .footer p {
            margin: 0;
        }

        .content a {
            display: inline-block;
            margin-top: 20px;
            color: black;
            font-weight: bold;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 25px;
            background-color: #3498db;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .content a:hover {
            background-color: #2980b9;
            transform: scale(1.05);
        }

    </style>
</head>
<body>
    <div class="content">
        <h1>Chao mung den voi he thong quan ly nhan su</h1>
        <p>He thong giup ban quan ly cac thong tin va san pham , khach hang va cac don hang de dang.</p>
        <ul>
            <li><a href="${pageContext.request.contextPath}/">Trang Chu</a></li>
            <li><a href="${pageContext.request.contextPath}/SanPham/list">Quan Ly San Pham</a></li>
            <li><a href="${pageContext.request.contextPath}/KhachHang/list">Quan Ly Khach Hang</a></li>
            <li><a href="${pageContext.request.contextPath}/NhanVien/list">Quan Ly Nhan Vien</a></li>
            <li><a href="${pageContext.request.contextPath}/KhoHang/list">Kho Hang</a></li>
            <li><a href="${pageContext.request.contextPath}/BaoHanh/list">Thong tin Bao Hanh</a></li>
            <li><a href="${pageContext.request.contextPath}/DanhGia/list">Danh Gia</a></li>
        </ul>
    </div>
    <div class="footer">
        <p>&copy; 2025 Quan ly nhan su. Tat ca quyen loi duoc bao luu.</p>
    </div>
</body>
</html>
