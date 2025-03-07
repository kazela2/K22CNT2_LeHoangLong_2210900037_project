<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Them Don Hang</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f7f7f7;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        form {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
            box-sizing: border-box;
        }

        label {
            font-size: 14px;
            color: #555;
            margin-bottom: 8px;
            display: block;
        }

        input, select {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
            transition: all 0.3s ease;
        }

        input:focus, select:focus {
            border-color: #007BFF;
            outline: none;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        a {
            text-decoration: none;
            color: #007BFF;
            display: block;
            text-align: center;
            margin-top: 20px;
            font-size: 16px;
        }

        a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <div>
        <h2>Them Don Hang</h2>
        <form action="${pageContext.request.contextPath}/DonHang/save" method="post">
            <label for="lhl_ngaydat">Ngay Dat:</label>
            <input type="datetime-local" name="lhl_ngaydat" required />

            <label for="lhl_tongtien">Tong Tien:</label>
            <input type="number" name="lhl_tongtien" required />

            <label for="lhl_trangthai">Trang Thai:</label>
            <select name="lhl_trangthai" required>
                <option value="Đang Xử Lý">Dang Xu Ly</option>
                <option value="Hoàn Thành">Hoan Thanh</option>
            </select>

            <label for="lhl_makh">Ma Khach Hang:</label>
            <input type="number" name="lhl_makh" required />

            <label for="lhl_manv">Ma Nhan Vien:</label>
            <input type="number" name="lhl_manv" />

            <input type="submit" value="Luu Don Hang" />
        </form>

        <a href="${pageContext.request.contextPath}/DonHang/list">Quay Lai Danh Sach</a>
    </div>
</body>
</html>
