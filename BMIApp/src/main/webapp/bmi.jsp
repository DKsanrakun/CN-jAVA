<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tính chỉ số BMI</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background: #fff;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
            width: 350px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            margin-bottom: 16px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        input[type="submit"] {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 12px;
            width: 100%;
            border-radius: 6px;
            cursor: pointer;
            font-weight: bold;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
        .result {
            margin-top: 20px;
            background: #e9f7ef;
            padding: 15px;
            border-radius: 6px;
            text-align: center;
            color: #155724;
            border: 1px solid #c3e6cb;
        }
        .category {
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Nhập thông tin để tính BMI</h2>
    <form action="bmi" method="post">
        Chiều cao (m): 
        <input type="text" name="height">
        Cân nặng (kg): 
        <input type="text" name="weight">
        <input type="submit" value="Tính BMI">
    </form>

    <c:if test="${not empty bmi}">
        <div class="result">
            <h3>Kết quả: BMI = <c:out value="${bmi}"/></h3>
            <c:choose>
                <c:when test="${bmi lt 18.5}">
                    <p class="category">Phân loại: Gầy</p>
                </c:when>
                <c:when test="${bmi lt 24.9}">
                    <p class="category">Phân loại: Bình thường</p>
                </c:when>
                <c:otherwise>
                    <p class="category">Phân loại: Thừa cân</p>
                </c:otherwise>
            </c:choose>
        </div>
    </c:if>
</div>
</body>
</html>
