<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kết quả khảo sát</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>
    <h1>Cảm ơn bạn đã hoàn thành khảo sát!</h1>

    <h2>Thông tin của bạn</h2>
    <p>Họ: <c:out value="${result.user.firstName}"/></p>
    <p>Tên: <c:out value="${result.user.lastName}"/></p>
    <p>Email: <c:out value="${result.user.email}"/></p>
    <p>
        Ngày sinh:
        <c:choose>
            <c:when test="${not empty result.user.dateOfBirth}">
                <c:out value="${result.user.dateOfBirth}"/>
            </c:when>
            <c:otherwise>Chưa cung cấp</c:otherwise>
        </c:choose>
    </p>

    <h2>Câu trả lời khảo sát</h2>
    <p>Nguồn biết đến: <c:out value="${result.survey.heardFrom}"/></p>

    <p>
        Nhận thông báo:
        <c:choose>
            <c:when test="${result.survey.announcements}">Có</c:when>
            <c:otherwise>Không</c:otherwise>
        </c:choose>
    </p>

    <p>
        Nhận cập nhật sản phẩm:
        <c:choose>
            <c:when test="${result.survey.productUpdates}">Có</c:when>
            <c:otherwise>Không</c:otherwise>
        </c:choose>
    </p>

    <c:if test="${result.survey.announcements or result.survey.productUpdates}">
        <p>Cách liên hệ: <c:out value="${result.survey.contactBy}"/></p>
    </c:if>

    <p><a href="index.jsp">Quay lại khảo sát</a></p>
</body>
</html>
