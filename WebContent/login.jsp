<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String status = (String)request.getAttribute("status");
if(status!=null){
%>
<p><%=status%></p>
<%} %>
<form action="LoginServlet" method="POST">
<input type="email" name="umail" placeholder="Enter email" required>
<input type="password" name="upass" placeholder="Enter Password" required>
<input type="submit" value="login">
</form>
</body>
</html>