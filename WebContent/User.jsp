<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*,com.Batch1.User.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Users</title>
</head>
<body>


<%
List<UserModel> l= (List<UserModel>)request.getAttribute("data");
HttpSession s = request.getSession();
String name = (String)s.getAttribute("name");
%>
<div class="listuser">
<center>

<form action="UserServlet" method="POST">
<input type="text" name="search" placeholder="ENter the name to search" required>
<input type="submit" value="search">
</form>



<%
if(name!=null){
%>
<h2>Welcome <%=name%></h2>
<%} %>
<table>
<tr>
<th>Id</th>
<th>Name</th>
<th>Email</th>
<th>Phone</th>
<th>City</th>
</tr>
<%
for(UserModel r:l){
%>

<tr>
<td><%= r.getId() %></td>
<td><%= r.getName() %></td>
<td><%= r.getEmail() %></td>
<td><%= r.getPhone() %></td>
<td><%= r.getCity() %></td>
<td><a href="DeleteServlet?id=<%= r.getId() %>">Delete</a></td>
<td><a href="">Update</a></td>
</tr>
<%} %>
</table>
</center>
</div>
</body>
</html>