<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Danh sach san pham</title>
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">

<style>
body {
    font-family: sans-serif;
    background-color: #f3f4f6;
    margin: 0;
    padding: 0;
}

header {
    background-color: white;
    border-bottom: 1px solid #d1d5db;
    padding: 16px 0;
    box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
    text-align: center;  /* Căn giữa nội dung */
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 24px;
}

.nav-links a {
    text-decoration: none;
    color: #333;
    font-weight: 500;
    font-size: 16px;
    transition: all 0.3s ease-in-out; /* Hiệu ứng mượt khi hover */
}

.nav-links a:hover {
    color: #10b981;  /* Thay đổi màu chữ khi hover */
    text-decoration: underline;  /* Thêm gạch dưới khi hover */
    transform: scale(1.1);  /* Phóng to một chút khi hover */
}

.nav-links a:active {
    color: #059669;  /* Thay đổi màu khi nhấn */
}
main {
    padding: 60px 0;
    text-align: center;
}

h2 {
    font-size: 32px;
    font-weight: bold;
    color: #10b981;
    margin-bottom: 20px;
}

p {
    font-size: 18px;
    color: #4b5563;
    margin-bottom: 20px;
    max-width: 800px;
    margin-left: auto;
    margin-right: auto;
}

.grid-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 24px;
    padding: 40px 20px;
}

.card {
    background-color: white;
    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    overflow: hidden;
    padding: 16px;
    text-align: center;
    transition: transform 0.3s ease-in-out;
}

.card:hover {
    transform: translateY(-5px);
}

.card img {
    width: 100%;
    height: 220px;
    object-fit: cover;
    border-radius: 10px 10px 0 0;
}

.card h3 {
    font-size: 20px;
    font-weight: bold;
    margin: 12px 0;
    color: #333;
}

.card p {
    color: #6b7280;
    font-size: 16px;
    margin-bottom: 8px;
}

.button {
    display: inline-block;
    background-color: #10b981;
    color: white;
    padding: 10px 20px;
    border-radius: 6px;
    text-decoration: none;
    font-size: 16px;
    font-weight: bold;
    transition: background-color 0.3s;
}

.button:hover {
    background-color: #059669;
}

footer {
    background-color: #1f2937;
    color: white;
    text-align: center;
    padding: 16px 0;
    margin-top: 40px;
}

h4 {
    font-size: 24px;
    font-weight: 600;
    color: #10b981;  /* Màu xanh lá */
    text-align: center;
    margin-top: 40px;
    margin-bottom: 16px;
    letter-spacing: 1px;
    text-transform: capitalize;
    text-decoration: underline;  /* Gạch dưới tiêu đề */
}



</style>
</head>
<body class="font-sans bg-gray-100">
<header class="header">
    <div class="container flex justify-center items-center">
        <div class="nav-links flex gap-8">
            <a href="#">Trang chủ</a>
            <a href="menu">Quản Lý Hệ Thống</a>
            <a href="#">Dịch vụ</a>
            <a href="#">Liên hệ</a>
        </div>
    </div>
</header>

    <main class="container">
        <h2>Chào mừng đến với HoangLong.com</h2>
        <p>Chúng tôi chuyên cung cấp các loại vật liệu, thiết bị điện nước chất lượng cao với giá cả cạnh tranh,
        Với nhiều năm kinh nghiệm trong ngành, chúng tôi cam kết mang đến cho khách hàng những sản phẩm bền bỉ, an toàn và hiệu quả.</p>
        <h4>Tin Tức Nổi Bật</h4>
        <div class="grid-container">
            <div class="card">
                <img src="/image/dien.jpg" alt="">
                <h3>Thiết bị điện</h3>
                <p>Các sản phẩm điện chất lượng cao phục vụ cho gia đình và công trình</p>
                <a href="#" class="button">Xem thêm</a>
            </div>
            
            <div class="card">
                <img src="ongnuoc.jpg" alt="">
                <h3>Thiết bị nước</h3>
                <p>Hệ thống ống nước, van, vòi với độ bền cao, dễ lắp đặt</p>
                <a href="#" class="button">Xem thêm</a>
            </div>
            
            <div class="card">
                <img src="images/phukien.jpg" alt="">
                <h3>Phụ kiện</h3>
                <p>Các loại phụ kiện hỗ trợ cho hệ thống điện nước hiện đại</p>
                <a href="#" class="button">Xem thêm</a>
            </div>
        </div>
    </main>

    <footer class="footer">
        <p>&copy; 2025 HoangLong.com - Chuyên cung cấp vật liệu điện nước</p>
    </footer>
</body>
</html>
