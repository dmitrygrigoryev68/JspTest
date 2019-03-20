<%@ page import="java.util.ArrayList" %>
<%@ page import="de.telran.grigoryev.models.User" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>
JSPTest
    </title>
</head>
<body>
<%
    ArrayList<User> users = (ArrayList) request.getAttribute("usersFromServer");
%>


<table>
    <tr>
        <th>Username</th>
        <th>Birth date</th>
    </tr>
    <%
        for (User user : users) {
    %>
    <tr>
        <td><%=user.getName()%>
        </td>
        <td><%=user.getBirthDate()%>
        </td>
    </tr>
    <%}%>
</table>
</body>
</html>