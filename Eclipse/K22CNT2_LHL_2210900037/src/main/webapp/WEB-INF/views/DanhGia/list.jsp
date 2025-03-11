<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Danh Gia</title>
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
    <h1>Danh Gia</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Ma San Pham</th>
            <th>Ma Khach Hang</th>
            <th>Danh Gia</th>
            <th>Nhan Xet</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="dg" items="${list}">
            <tr>
                <td>${dg.lhl_mabaohanh}</td>
                <td>${dg.lhl_masp}</td> 
                <td>${dg.lhl_tenkh}</td>
                <td>${dg.lhl_danhgia}</td>
                <td>${dg.lhl_nhanxet}</td>
                <td><a href="${pageContext.request.contextPath}/DanhGia/edit/${dg.lhl_madanhgia}">Edit</a></td>
                <td><a href="${pageContext.request.contextPath}/DanhGia/delete/${dg.lhl_madanhgia}"
                    onclick="return confirm('Ban co chac muon xoa khong?')">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
    <br />

    <a href="${pageContext.request.contextPath}/menu">Quay Lai</a>

    <a href="${pageContext.request.contextPath}/DanhGia/add">Them Moi</a>
</body>
</html>
