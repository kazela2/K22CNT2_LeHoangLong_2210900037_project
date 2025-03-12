<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh Sach Kho Hang</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: white;
        }
        
        h1 {
            text-align: center;
            color: #333;
        }
        
        table {
            border-collapse: collapse;
            margin: 20px 0;
            width: 70%;
            background-color: white;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }
        
        th, td {
            border: 2px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        
        th {
            background-color: #007BFF;
            color: white;
        }
        
        a {
            text-decoration: none;
            color: #007BFF;
            margin: 10px;
            display: inline-block;
            padding: 8px 12px;
            border: 1px solid #007BFF;
            border-radius: 5px;
            transition: 0.3s;
        }
        
        a:hover {
            background-color: #007BFF;
            color: white;
        }
    </style>
</head>
<body>
    <h1>Danh Sach Kho Hang</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Ten San Pham</th>
            <th>So Luong Ton</th>
            <th>Ngay Nhap</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="khang" items="${list}">
            <tr>
                <td>${khang.lhl_makho}</td>
                <td>
				<c:forEach var="sanPham" items="${sanPhams}">
						<c:if test="${sanPham.lhl_masp == khang.lhl_masp}">
            					${sanPham.lhl_tensp}
        				</c:if>
					</c:forEach>
				</td> 
                <td>${khang.lhl_soluongton}</td>
                <td>${khang.lhl_ngaynhap}</td>
                <!-- Sửa lại link edit và delete -->
                <td><a href="${pageContext.request.contextPath}/KhoHang/edit/${khang.lhl_makho}">Edit</a></td>
                <td><a href="${pageContext.request.contextPath}/KhoHang/delete/${khang.lhl_makho}"
                    onclick="return confirm('Ban co chac muon xoa khong?')">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
    <br />
    <!-- Sửa lại đường dẫn quay lại -->
    <a href="${pageContext.request.contextPath}/menu">Quay Lai</a>
    <!-- Sửa lại đường dẫn thêm mới kho hàng -->
    <a href="${pageContext.request.contextPath}/KhoHang/add">Them Moi</a>
</body>
</html>
