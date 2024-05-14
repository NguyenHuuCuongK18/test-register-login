<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="controller.GoogleUtils" %>
>>>>>>> 7d69e8d1e234c758937082b3fa85349451209c2d
<html>
    <head>
        <title>Index</title>
    </head>
    <body>
        <h1>Index</h1>
<<<<<<< HEAD
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
=======
        <%
          // Retrieve attributes using GoogleUtils method
          String id = GoogleUtils.getAttribute(request, "id");
          String name = GoogleUtils.getAttribute(request, "name");
          String email = GoogleUtils.getAttribute(request, "email");
          String picture = GoogleUtils.getAttribute(request, "picture");
          String gender = GoogleUtils.getAttribute(request, "gender");
          String locale = GoogleUtils.getAttribute(request, "locale");

          // Print the values
          out.print("Id: " + id);
          out.print("<br/>Name: " + name);
          out.print("<br/>Email: " + email);
          out.print("<br/>Gender: " + gender);
          out.print("<br/>Locale: " + locale);
          if (!picture.equals("N/A")) {
              out.print("<br/>Picture: <img src='" + picture + "' alt='Profile Picture' />");
          }
        %>
>>>>>>> 7d69e8d1e234c758937082b3fa85349451209c2d
    </body>
</html>
