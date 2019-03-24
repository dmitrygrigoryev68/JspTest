
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
<head>
    <title>Login</title>
    <link href="/css/styles.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="form-style-2">
    <div class="form-style-2-heading">
        Please, Log In
    </div>
    <form method="post" action="/login">
        <label for="name">User name
            <input class="input-field" type = "text" id="name" name = "name">
        </label>
        <label for="password"> Password
            <input class="input-field" type = "password" id = "password" name = "password">
        </label>
        <input type="submit" value="Login">
    </form>
</div>
</body>
</html>
