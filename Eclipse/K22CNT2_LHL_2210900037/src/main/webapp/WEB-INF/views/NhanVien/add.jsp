<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Them Nhan Vien</title>
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

        input[type="text"], input[type="email"], input[type="tel"], select {
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
</head>
<body>
    <div>
        <h2>Them Nhan Vien</h2>
        <!-- Form de them nhan vien -->
        <form action="${pageContext.request.contextPath}/NhanVien/save" method="post">
            <!-- Cac truong cua nhan vien -->
            Ho Ten: <input type="text" name="lhl_hoten" value="${command.lhl_hoten}" required /><br />
            So Dien Thoai: <input type="tel" name="lhl_sodienthoai" value="${command.lhl_sodienthoai}" required /><br />
            
            Chuc Vu: 
            <select name="lhl_chucvu" required>
                <option value="Telesales">Nhan vien Telesales</option>
                <option value="Kho">Nhan vien Kho</option>
                <option value="QuanLy">Quan Ly</option>
            </select><br />
            
            <input type="submit" value="Luu" />
        </form>

        <br />
        <!-- Lien ket quay lai danh sach nhan vien -->
        <a href="${pageContext.request.contextPath}/NhanVien/list">Quay lai danh sach</a>
    </div>
</body>
</html>
