<%@ page import="java.util.ArrayList" %>
<%@ page import="de.telran.grigoryev.models.User" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
   <head>
     <title>JSPTest</title>
   </head>
   <body>
     <table>
       <tr>
          <th>User name</th>
          <th>Birth date</th>
       </tr>
       <c:forEach items="${usersFromServer}" var = "user">
          <tr>
            <td>${user.name}</td>
            <td>${user.birthDate}</td>
          </tr>
       </c:forEach>
     </table>
   </body>
</html>
