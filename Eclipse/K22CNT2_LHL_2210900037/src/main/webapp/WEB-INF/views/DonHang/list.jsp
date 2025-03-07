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

<h1>Danh Sach Don Hang</h1>
<table border="1">
	<tr>
		<th>ID</th>
		<th>Ngay Dat</th>
		<th>Tong Tien</th>
		<th>Trang Thai</th>
		<th>Khach Hang</th>
		<th>Nhan Vien</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	<c:forEach var="donhang" items="${listdonhang}">
		<tr>
			<td>${donhang.lhl_madh}</td>
			<td>${donhang.lhl_ngaydat}</td>
			<td>${donhang.lhl_tongtien}</td>
			<td>${donhang.lhl_trangthai}</td>
			<td>${donhang.lhl_makh}</td>
			<td>${donhang.lhl_manv}</td>
			<td><a
				href="${pageContext.request.contextPath}/DonHang/edit/${donhang.lhl_madh}">Edit</a></td>
			<td><a
				href="${pageContext.request.contextPath}/DonHang/delete/${donhang.lhl_madh}">Delete</a></td>
		</tr>
	</c:forEach>
</table>
<br />
<a href="${pageContext.request.contextPath}/menu">Quay Lai</a>
<a href="${pageContext.request.contextPath}/DonHang/add">Them Moi</a>
