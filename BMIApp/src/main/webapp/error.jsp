<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lỗi nhập liệu</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8d7da;
            color: #721c24;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .error-box {
            background-color: #f8d7da;
            border: 1px solid #f5c6cb;
            padding: 30px;
            border-radius: 8px;
            width: 400px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
        }
        .btn {
            background-color: #721c24;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #501519;
        }
    </style>
</head>
<body>
    <div class="error-box">
        <h2>Đã xảy ra lỗi</h2>
        <p>${error}</p>
        <br>
        <a href="bmi.jsp" class="btn">Quay lại</a>
    </div>
</body>
</html>
