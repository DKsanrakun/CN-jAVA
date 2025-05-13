<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>Đếm ký tự</title></head>
<body>
    <form action="count" method="post">
        Nhập chuỗi: <input type="text" name="inputString" />
        <input type="submit" value="Đếm" />
    </form>

    <c:if test="${not empty count}">
        <p>Số ký tự: <c:out value="${count}" /></p>
    </c:if>
</body>
</html>
