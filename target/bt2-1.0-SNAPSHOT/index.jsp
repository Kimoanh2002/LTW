<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Join our email list</title>
    <style>
        body { font-family: Arial, sans-serif; }
        h1 { color: teal; }
    </style>
</head>
<body>
<h1>Join our email list</h1>
<p>To join our email list, enter your name and email address below.</p>
<form action="${pageContext.request.contextPath}/join" method="post">
    <label>Email:</label>
    <input type="email" name="email" required><br><br>
    <label>First Name:</label>
    <input type="text" name="firstName" required><br><br>
    <label>Last Name:</label>
    <input type="text" name="lastName" required><br><br>
    <button type="submit">Join Now</button>
</form>
</body>
</html>