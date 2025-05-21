<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<meta charset="UTF-8">
    <title>Danh sách công việc</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 20px;
        }

        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
        }

        .form-container {
            background-color: #fff;
            padding: 20px 25px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            max-width: 500px;
            margin: 0 auto 30px auto;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="checkbox"] {
            transform: scale(1.3);
            margin-left: 5px;
        }

        .btn-submit {
            background-color: #007bff;
            color: white;
            padding: 10px 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 15px;
        }

        .btn-submit:hover {
            background-color: #0056b3;
        }

        table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
            background-color: #fff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f8f9fa;
        }

        a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

        .status-done {
            color: green;
            font-weight: bold;
        }

        .status-pending {
            color: orange;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <h2>📝 Trình Quản Lý Danh Sách Công Việc</h2>

    <div class="form-container">
        <form:form action="/save" method="post" modelAttribute="task">
            <!-- Trường ẩn lưu ID -->
            <input type="hidden" name="id" value="${task.id}" />

            <div class="form-group">
                <label>Tiêu đề:</label>
                <form:input path="title" />
            </div>

            <div class="form-group">
                <label>Mô tả:</label>
                <form:input path="description" />
            </div>

            <div class="form-group">
                <label>
                    Hoàn thành:
                    <form:checkbox path="completed" />
                </label>
            </div>

            <input type="submit" class="btn-submit" value="💾 Lưu Công Việc" />
        </form:form>
    </div>

    <table>
        <tr>
            <th>Tiêu đề</th>
            <th>Mô tả</th>
            <th>Trạng thái</th>
            <th>Hành động</th>
        </tr>
        <c:forEach var="t" items="${listTasks}">
            <tr>
                <td>${t.title}</td>
                <td>${t.description}</td>
                <td>
                    <c:choose>
                        <c:when test="${t.completed}">
                            <span class="status-done">✅ Đã hoàn thành</span>
                        </c:when>
                        <c:otherwise>
                            <span class="status-pending">⏳ Chưa hoàn thành</span>
                        </c:otherwise>
                    </c:choose>
                </td>
                <td>
                    <a href="/edit/${t.id}">Sửa</a> |
                    <a href="/delete/${t.id}" onclick="return confirm('Bạn có chắc chắn muốn xóa công việc này không?')">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
  \\ 123
  
