<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Thêm Sản Phẩm</title>
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

        input[type="text"], input[type="number"], textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
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
        <h2>Thêm Sản Phẩm</h2>
        <!-- Form để thêm sản phẩm -->
        <form action="${pageContext.request.contextPath}/SanPham/save" method="post">
            <!-- Các trường của sản phẩm -->
            Tên Sản Phẩm: <input type="text" name="lhl_tensp" value="${command.lhl_tensp}" required/><br/>
            Mô Tả: <textarea name="lhl_mota">${command.lhl_mota}</textarea><br/>
            Danh Mục: <input type="text" name="lhl_danhmuc" value="${command.lhl_danhmuc}" required/><br/>
            Giá: <input type="number" name="lhl_gia" value="${command.lhl_gia}" required/><br/>
            
            <input type="submit" value="Lưu"/>
        </form>
        
        <br/>
        <!-- Liên kết quay lại danh sách sản phẩm -->
        <a href="${pageContext.request.contextPath}/SanPham/list">Quay lại danh sách</a>
    </div>
</body>
</html>
