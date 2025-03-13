<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Công Ty TNHH Phân Phối Thiết Bị Điện Nước HoangLong</title>
<link
	href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	rel="stylesheet">
<style>
/* Định dạng chung */
body {
	font-family: sans-serif;
	background-color: #f3f4f6;
	margin: 0;
	padding: 0;
}

/* Cải thiện giao diện phần header */
header {
	background-color: white;
	border-bottom: 1px solid #d1d5db;
	padding: 16px 0; /* Thêm padding cho phần header */
	box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
	text-align: center; /* Căn giữa nội dung */
}

.nav-links {
	display: flex;
	justify-content: center; /* Căn giữa các link trong thanh menu */
	gap: 20px; /* Tạo khoảng cách giữa các link */
}

.nav-links a {
	text-decoration: none;
	color: #333;
	font-weight: 700; /* Tăng độ đậm của chữ */
	font-size: 16px; /* Tăng kích thước chữ một chút */
	padding: 10px 20px; /* Thêm khoảng cách xung quanh chữ */
	border-radius: 10px;
	transition: all 0.3s ease-in-out; /* Hiệu ứng mượt khi hover */
}

.nav-links a:hover {
	color: #10b981; /* Thay đổi màu chữ khi hover */
	text-decoration: underline; /* Thêm gạch dưới khi hover */
	transform: scale(1.1); /* Phóng to một chút khi hover */
}

.nav-links a:active {
	color: #059669; /* Thay đổi màu khi nhấn */
}
/* Footer Styles */
footer.footer {
    background-color: #f8f8f8;
    padding: 40px 20px;
    text-align: left;
    border-top: 1px solid #ddd;
}

/* Định dạng chung cho footer-content */
footer.footer .footer-content {
    max-width: 1200px;
    margin: 0 auto;
    display: flex;
    justify-content: space-between; /* Căn đều các phần */
    flex-wrap: wrap; /* Cho phép các phần tử trong footer tự động xuống dòng khi cần */
}

/* Phần Thông tin liên hệ */
footer.footer .contact-info {
    width: 30%; /* Cột trái */
    margin-right: 20px;
}

footer.footer .contact-info h3 {
    font-size: 24px;
    margin-bottom: 20px;
    color: #333;
}

footer.footer .contact-info p {
    font-size: 14px;
    color: #666;
    margin: 5px 0;
}

/* Phần Chính sách */
footer.footer .footer-links {
    width: 30%; /* Cột giữa */
    margin-right: 20px;
}

footer.footer .footer-links .policies {
    width: 100%;
}

footer.footer .footer-links h3 {
    font-size: 20px;
    margin-bottom: 20px; /* Tăng khoảng cách dưới tiêu đề */
    color: #333;
}

footer.footer .footer-links ul {
    list-style: none;
    padding: 0;
}

footer.footer .footer-links ul li {
    margin: 8px 0;
}

footer.footer .footer-links ul li a {
    text-decoration: none;
    color: #333;
    transition: all 0.3s ease;
}

footer.footer .footer-links ul li a:hover {
    color: #10b981;
    text-decoration: underline;
}

/* Mobile Responsive */
@media (max-width: 768px) {
    footer.footer .footer-content {
        flex-direction: column;
        align-items: center;
    }

    footer.footer .footer-content > div {
        width: 100%;
        margin-bottom: 20px;
    }
}


/* Main content */
.main-content {
    max-width: 1200px;
    margin: 20px auto;
    padding: 20px;
}

/* Giới thiệu công ty */
.intro {
    text-align: center;
    margin-bottom: 40px;
}

/* Sản phẩm nổi bật */
.featured-products {
    margin-bottom: 40px;
}

.featured-products h3 {
    text-align: center;
    font-size: 24px;
    margin-bottom: 20px;
}

.product-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
}

.product-card {
    border: 1px solid #ddd;
    padding: 20px;
    text-align: center;
    box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
}

.product-card img {
    max-width: 100%;
    height: auto;
}

.product-card h4 {
    margin: 10px 0;
}

.product-card .price {
    font-size: 18px;
    font-weight: bold;
    color: red;
}

.product-card .btn {
    margin-top: 10px;
    padding: 10px 20px;
    background-color: #3498db;
    color: white;
    border-radius: 5px;
    text-decoration: none;
}

.product-card .btn:hover {
    background-color: #2980b9;
}

/* Khuyến mãi */
.promotion-banner {
    background-color: #f1c40f;
    padding: 20px;
    text-align: center;
    border-radius: 5px;
}

.promotion-banner .btn {
    margin-top: 10px;
}

/* Đánh giá của khách hàng */
.customer-reviews {
    margin-bottom: 40px;
}

.reviews {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
    justify-content: center;
}

.review {
    width: 250px;
    padding: 15px;
    border: 1px solid #ddd;
    box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
    text-align: center;
}

.rating {
    font-size: 18px;
    color: #ff5733;
    font-weight: bold;
}

.review-text {
    font-style: italic;
    margin-top: 10px;
}

.customer-name {
    font-weight: bold;
    margin-top: 5px;
}

/* Liên hệ */
.contact-us {
    text-align: center;
    margin-top: 40px;
}


</style>
</head>
<body class="font-sans bg-gray-100">
	<header class="header">
		<div class="container flex justify-center items-center">
			<div class="nav-links flex gap-8">
				<a href="index.jsp">Trang chủ</a> 
				<a href="menu">Quản Lý Hệ Thống</a> 
				<a href="gioithieu">Giới Thiệu</a> 
				<a href="dichvu">Thông Tin Nổi Bật</a> 
			</div>
		</div>
	</header>
	<main class="main-content">
    <section class="intro">
        <h2>Chào mừng đến với Công Ty TNHH Thiết Bị Điện Nước HoangLong</h2>
        <p>Chúng tôi chuyên cung cấp các sản phẩm và dịch vụ chất lượng cao về thiết bị điện nước, phục vụ nhu cầu của mọi gia đình và công trình.</p>
    </section>

    <!-- Sản phẩm nổi bật -->
    <section class="featured-products">
        <h3>Sản phẩm nổi bật</h3>
        <div class="product-grid">
            <div class="product-card">
                <img src="https://diennuocminhtam.com/upload/sanpham/dts16078182_320x320.png" alt="Product Name">
                <h4>Quạt Cây</h4>
                <p class="price">1,000,000 VNĐ</p>
            </div>
            <div class="product-card">
                <img src="https://diennuocminhtam.com/upload/sanpham/vy3581906234_280x320.jpg" alt="Product Name">
                <h4>Quạt Cây Pro</h4>
                <p class="price">10,000,000 VNĐ</p>
            </div>
            <div class="product-card">
                <img src="https://diennuocminhtam.com/upload/sanpham/f-70zbp5779_320x320.jpg" alt="Product Name">
                <h4>Quạt F-70ZBP</h4>
                <p class="price">2,000,000 VNĐ</p>
            </div>
        </div>
    </section>

    <!-- Tin tức hoặc khuyến mãi -->
    <section class="promotions">
        <h3>Khuyến mãi đặc biệt</h3>
        <div class="promotion-banner">
            <p>Giảm giá lên đến 30% cho các đơn hàng đầu tiên! Khám phá ngay!</p>
        </div>
    </section>

    <!-- Đánh giá của khách hàng -->
    <section class="customer-reviews">
        <h3>Đánh giá của khách hàng</h3>
        <div class="reviews">
            <div class="review">
                <p class="rating">5★</p>
                <p class="review-text">"Sản phẩm tuyệt vời, tôi rất hài lòng!"</p>
                <p class="customer-name">Nguyễn Văn Vũ</p>
            </div>
                        <div class="review">
                <p class="rating">5★</p>
                <p class="review-text">"Sản phẩm tuyệt vời, tôi rất hài lòng!"</p>
                <p class="customer-name">Lê Hoàng Việt</p>
            </div>
                        <div class="review">
                <p class="rating">5★</p>
                <p class="review-text">"Sản phẩm tuyệt vời, tôi rất hài lòng!"</p>
                <p class="customer-name">Nguyễn Thị Thanh Thủy</p>
            </div>
            <!-- Add more reviews here -->
        </div>
    </section>

    <!-- Liên hệ -->
    <section class="contact-us">
        <h3>Liên hệ với chúng tôi</h3>
        <p>Chúng tôi luôn sẵn sàng hỗ trợ bạn. Đừng ngần ngại liên hệ qua email hoặc số điện thoại dưới đây.</p>
        <p>Email: thietbidiennuochanoi@gmail.com | SĐT: 024 3388 3999</p>
    </section>
</main>
	
<footer class="footer">
    <div class="footer-content">
        <!-- Phần 1: Thông tin liên hệ -->
        <div class="contact-info">
            <h3>Thông tin liên hệ</h3>
            <p><strong>CÔNG TY TNHH THIẾT BỊ ĐIỆN NƯỚC HOANGLONG</strong></p>
            <p>Địa chỉ: Đại Vĩ, Liên Hà, Đông Anh, Hà Nội</p>
            <p>Địa điểm kinh doanh: Số 1 ngõ 184 Đường Văn Minh, Di Trạch, Hoài Đức, Hà Nội</p>
            <p>Kho hàng: Số 1 ngõ 184 Đường Văn Minh, Di Trạch, Hoài Đức, Hà Nội</p>
            <p>Số điện thoại: 034 9393995</p>
            <p>Email: thietbidiennuochoanglong@gmail.com</p>
            <p>Số ĐKKD: 0106409522</p>
            <p>Nơi cấp: Sở KHĐT TP Hà Nội cấp ngày 30.12.2013</p>
        </div>

        <!-- Phần 2: Chính sách -->
        <div class="footer-links">
            <div class="policies">
                <h3>Chính sách</h3>
                <ul>
                    <li><a href="#">Chính sách đổi trả</a></li>
                    <li><a href="#">Chính sách thanh toán</a></li>
                    <li><a href="#">Chính sách vận chuyển</a></li>
                    <li><a href="#">Chính sách bảo hành</a></li>
                    <li><a href="#">Hướng dẫn mua hàng</a></li>
                </ul>
                <h3>Quy định chung</h3>
                <ul>
                    <li><a href="#">Miễn trừ trách nhiệm</a></li>
                    <li><a href="#">Liên kết đến website</a></li>
                    <li><a href="#">Bảo mật thông tin</a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>

	
</body>
</html>