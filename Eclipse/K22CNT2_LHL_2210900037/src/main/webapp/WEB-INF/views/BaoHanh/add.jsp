<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Them Bao Hanh</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px;
        }

        input[type="text"], input[type="email"], input[type="tel"], select, input[type="date"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }

        select {
            background-color: #fff;
            color: #333;
            font-size: 16px;
            cursor: pointer;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        a {
            text-decoration: none;
            color: #007BFF;
            display: inline-block;
            margin-top: 15px;
            text-align: center;
        }

        a:hover {
            color: #0056b3;
        }
    </style>
    <script>
        // Hàm chuyển đổi định dạng ngày từ yyyy-mm-dd thành yyyy/mm/dd
        function convertDateFormat(input) {
            var date = input.value;
            if (date) {
                // Kiểm tra xem định dạng có phải yyyy-mm-dd không
                var parts = date.split('-');
                if (parts.length === 3) {
                    // Chuyển sang yyyy/mm/dd
                    input.value = parts.join('/');
                }
            }
        }

        // Khi người dùng nhập vào các trường ngày, tự động chuyển đổi định dạng
        window.onload = function() {
            var ngayBatDauInput = document.getElementById('ngaybatdau');
            var ngayKetThucInput = document.getElementById('ngayketthuc');
            
            ngayBatDauInput.addEventListener('blur', function() {
                convertDateFormat(ngayBatDauInput);
            });
            ngayKetThucInput.addEventListener('blur', function() {
                convertDateFormat(ngayKetThucInput);
            });
        };
    </script>
</head>
<body>
    <div>
        <h2>Them Bao Hanh</h2>
        <!-- Form de them bao hanh -->
        <form action="${pageContext.request.contextPath}/BaoHanh/save" method="post">
            <!-- Ma San Pham -->
            Ten San Pham:
            <select name="lhl_masp" required>
                <option value="" disabled selected>Chon San Pham</option>
                <c:forEach var="sanPham" items="${sanPhams}">
                    <option value="${sanPham.lhl_masp}">${sanPham.lhl_tensp}</option>
                </c:forEach>
            </select><br/>


            Ngay Bat Dau:
            <input type="text" name="lhl_ngaybatdau" value="${command.lhl_ngaybatdau}" required /><br />


            Ngay Ket Thuc:
            <input type="text" name="lhl_ngayketthuc" value="${command.lhl_ngayketthuc}" required /><br />
            

            Trang Thai:
            <select name="lhl_trangthai" required>
                <option value="BaoHanh">Bao Hanh</option>
                <option value="HetHan">Het Han Bao Hanh</option>
            </select><br />
            <input type="submit" value="Luu" />
        </form>

        <br />
        <!-- Quay lai danh sach bao hanh -->
        <a href="${pageContext.request.contextPath}/BaoHanh/list">Quay lai danh sach</a>
    </div>
</body>
</html>
