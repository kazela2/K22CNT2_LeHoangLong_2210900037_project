<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Chinh Sua Danh Gia</title>
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
        <h2>Chinh Sua Danh Gia</h2>

        <form action="${pageContext.request.contextPath}/DanhGia/editsave" method="post">
            <input type="hidden" name="lhl_madanhgia" value="${command.lhl_madanhgia}"/>

            <label>Ma San Pham:</label>
            <select name="lhl_masp" required>
                <c:forEach var="sanPham" items="${sanPhams}">
                    <option value="${sanPham.lhl_masp}" ${command.lhl_masp == sanPham.lhl_masp ? 'selected' : ''}>
                        ${sanPham.lhl_tensp}
                    </option>
                </c:forEach>
            </select>
            
            <label>Ma Khach Hang:</label>
            <select name="lhl_makh" required>
                <option value="" disabled selected>Chon Ma Khach Hang</option>
                <c:forEach var="khachHang" items="${khachHangs}">
                    <option value="${khachHang.lhl_makh}" ${command.lhl_makh == khachHang.lhl_makh ? 'selected' : ''}>
                        ${khachHang.lhl_hoten}
                    </option>
                </c:forEach>
            </select>
            
            <label>Danh Gia:</label>
            <select name="lhl_danhgia" required>
                <c:forEach var="i" begin="1" end="5">
                    <option value="${i}" ${command.lhl_danhgia == i ? 'selected' : ''}>${i} Sao</option>
                </c:forEach>
            </select>
            
            <label>Nhan Xet:</label>
            <input type="text" name="lhl_nhanxet" value="${command.lhl_nhanxet}" required />
            
            <input type="submit" value="Cap Nhat"/>
        </form>
        
        <br/>
        <a href="${pageContext.request.contextPath}/DanhGia/list">Quay lai danh sach</a>
    </div>
</body>
</html>
