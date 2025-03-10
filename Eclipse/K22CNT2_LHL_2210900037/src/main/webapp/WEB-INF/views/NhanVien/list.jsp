<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<h1>Danh Sach Nhan Vien</h1>
<table border="1">
    <tr>
        <th>Ma Nhan Vien</th>
        <th>Ho Ten</th>
        <th>So Dien Thoai</th>
        <th>Chuc Vu</th>
        <th>Chinh Sua</th>
        <th>Xoa</th>
    </tr>
    <c:forEach var="nv" items="${list}">
        <tr>
            <td>${nv.lhl_manv}</td>
            <td>${nv.lhl_hoten}</td>
            <td>${nv.lhl_sodienthoai}</td>
            <td>${nv.lhl_chucvu}</td>
            <!-- Sua lai link edit va delete -->
            <td><a href="${pageContext.request.contextPath}/NhanVien/edit/${nv.lhl_manv}">Edit</a></td>
            <td><a href="${pageContext.request.contextPath}/NhanVien/delete/${nv.lhl_manv}" 
                   onclick="return confirm('Ban co chac muon xoa khong?')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br />
<!-- Sua lai duong dan quay lai -->
<a href="${pageContext.request.contextPath}/menu">Quay Lai</a>
<!-- Sua lai duong dan them moi nhan vien -->
<a href="${pageContext.request.contextPath}/NhanVien/add">Them Moi Nhan Vien</a>
