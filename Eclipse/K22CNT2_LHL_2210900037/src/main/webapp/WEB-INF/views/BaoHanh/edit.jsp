<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Chinh Sua Bao Hanh</title>
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

        input[type="text"], input[type="number"], textarea, select, input[type="date"] {
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
        <h2>Chinh Sua Bao Hanh</h2>

        <form action="${pageContext.request.contextPath}/BaoHanh/editsave" method="post">

            <input type="hidden" name="lhl_mabaohanh" value="${command.lhl_mabaohanh}"/>

            Ma San Pham: <select name="lhl_masp" required>
                <c:forEach var="sanPham" items="${sanPhams}">
                    <option value="${sanPham.lhl_masp}" ${command.lhl_masp == sanPham.lhl_masp ? 'selected' : ''}>
                        ${sanPham.lhl_tensp}
                    </option>
                </c:forEach>
            </select><br/>
            
            Ngay Bat Dau: <input type="text" name="lhl_ngaybatdau" value="${command.lhl_ngaybatdau}" required/><br/>
            Ngay Ket Thuc: <input type="text" name="lhl_ngayketthuc" value="${command.lhl_ngayketthuc}" required/><br/>

            Trang Thai : 
            <select name="lhl_trangthai" required>
                <option value="Bao Hanh" ${command.lhl_trangthai == 'Bao Hanh' ? 'selected' : ''}>Bao Hanh</option>
                <option value="Het Han" ${command.lhl_trangthai == 'Het Han' ? 'selected' : ''}>Het Han</option>
            </select><br />

            <input type="submit" value="Cap Nhat"/>
        </form>
        
        <br/>
        <!-- Liên kết quay lại danh sách bảo hành -->
        <a href="${pageContext.request.contextPath}/BaoHanh/list">Quay lai danh sach</a>
    </div>
</body>
</html>
