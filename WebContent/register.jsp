<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<body>
<div class="registerpage">
<form action="RegsiterServlet" method="POST">
<input type="text" name="name" placeholder="ENter the name" required><br>
<input type="email" name="mail" placeholder="ENter the Email" required><br>
<input type="number" name="phone" placeholder="ENter the number" required><br>
<input type="password" name="password" placeholder="ENter the Passsword" required><br>
<input type="text" name="city" placeholder="ENter the City" required><br>
<input type="submit" value="submit">
</form>



</div>
</body>
</html>