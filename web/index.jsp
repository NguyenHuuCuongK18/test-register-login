<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Index</title>
    </head>
    <body>
        <h1>Index</h1>
        <c:if test="${not empty sessionScope.user}">
            <p>
                Id: ${sessionScope.user.id} <br>
                Name: ${sessionScope.user.name} <br>
                Email: ${sessionScope.user.email} <br>
                <%-- Construct the full URL to the user's avatar --%>
                <c:set var="avatarPath" value="${pageContext.request.contextPath}/${sessionScope.user.avatar}" />
                Picture: <img src="${avatarPath}" alt="Profile Picture">
            </p>
        </c:if>
        <c:if test="${empty sessionScope.user}">
            <p>No user information available.</p>
        </c:if>
    </body>
</html>
