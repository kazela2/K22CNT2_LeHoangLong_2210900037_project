<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	background-color: cyan;
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

<h1>Danh Sách Sản Phẩm</h1>
<table border="1">
	<tr>
		<th>ID</th>
		<th>Tên Sản Phẩm</th>
		<th>Giá</th>
		<th>Mô Tả</th>
		<th>Danh Mục</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	<c:forEach var="user" items="${list}">
		<tr>
			<td>${user.lhl_masp}</td>
			<td>${user.lhl_tensp}</td>
			<td>${user.lhl_gia}</td>
			<td>${user.lhl_mota}</td>
			<td>${user.lhl_danhmuc}</td>
			<a
				href="${pageContext.request.contextPath}/SanPham/edit/${user.lhl_masp}">Edit</a>
			<a
				href="${pageContext.request.contextPath}/SanPham/delete/${user.lhl_masp}"
				onclick="return confirm('Ban Co Chac Muon Xoa Khong?')">Delete</a>

		</tr>
	</c:forEach>
</table>
<br />
<a href="/viewlist">Quay Lại</a>
<a href="/sanpham/add">Them Moi</a>
