<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="controller.GoogleUtils" %>
<html>
    <head>
        <title>Index</title>
    </head>
    <body>
        <h1>Index</h1>
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
    </body>
</html>
