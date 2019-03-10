<%@ page import="java.util.ArrayList" %>
<%@ page import="de.telran.grigoryev.models.User" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
   <head>
     <title>JSPTest</title>
       <link href="/css/styles.css" rel="stylesheet" type="text/css">
   </head>
   <body>
   <div class="form-style-2">
       <div class="form-style-2-heading">
           Please, Sign Up
       </div>
       <form method="post" action="/signUp">
           <label for="name">User name
               <input class="input-field" type = "text" id="name" name = "name">
           </label>
           <label for="birthDate">Birth Date
               <input class="input-field" type = "birthDate" id = "birthDate" name = "birthDate">
           </label>
           <label for="password"> Password
               <input class="input-field" type = "password" id = "password" name = "password">
           </label>
           <input type="submit" value="Sign Up">
       </form>
   </div>
   <div class="form-style-2-heading">
       Already registered
   </div>
    <div class="form-style-2">
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
    </div>
   </body>
</html>
