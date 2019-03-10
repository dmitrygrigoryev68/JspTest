<%@ page import="java.util.ArrayList" %>
<%@ page import="de.telran.grigoryev.models.User" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>JSPTest</title>
</head>
<body>
<span style="color: ${cookies.color.value}">Hello</span>
<form method="post" action="/home">
    <label for="color">
        <select name="color" id="color">
            <option name="red">Red</option>
            <option name="blue">Blue</option>
            <option name="black">Black</option>
        </select>
    </label>
    <input type="submit" value="Color send">

</form>

</body>
</html>
