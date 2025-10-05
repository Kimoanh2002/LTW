<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Thanks for joining our email list</title>
    <style>
        body { font-family: Arial, sans-serif; }
        h1 { color: teal; }
    </style>
</head>
<body>
<h1>Thanks for joining our email list</h1>
<p>Here is the information that you entered:</p>
<p>Email: ${user.email}</p>
<p>First Name: ${user.firstName}</p>
<p>Last Name: ${user.lastName}</p>
<p>To enter another email, click the Return button below.</p>
<form action="${pageContext.request.contextPath}/return" method="get">
    <button type="submit">Return</button>
</form>
</body>
</html>