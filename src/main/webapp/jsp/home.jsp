
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>


<html>
<head>
    <title>JSPTest</title>
</head>
<body>
<h1>
<span style="color: ${cookie.color.value}">Hello</span>
</h1>
<form method="post" action="/home">
    <label for="color">
        <select name="color" id="color">
            <option value="red">Красный</option>
            <option value="blue">Синий</option>
            <option value="black">Чёрный</option>
        </select>
    </label>
    <input type="submit" value="Color send">

</form>

</body>
</html>
