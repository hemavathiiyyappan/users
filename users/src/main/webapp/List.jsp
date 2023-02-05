<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List</title>
</head>
<body>
</center>
  <%@ page import ="java.sql.*" %>
<%
String id = request.getParameter("userId");
String driverName = "org.postgresql.Driver";
String connectionUrl = "jdbc:postgresql://localhost:5432/";
String dbName = "postgres";
String userId = "postgres";
String password = "@hema";

try {
	 Class.forName("org.postgresql.Driver");
	 } catch (ClassNotFoundException e) {
	 e.printStackTrace();
	 }

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>LIST OF ALL USERS</strong></font></h2>
<table align="center" cellpadding="4" cellspacing="4" border="1">
<div align="center">
<p><a href="Index.jsp">Click Back</a></p>
</div>
<tr>

</tr>
<tr>
<td><b>ID</b></td>
<td><b>NAME</b></td>
<td><b>EMAIL</b></td>
<td><b>COUNTRY</b></td>
<td><b>ACTION</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM users";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getInt("id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("country") %></td>
<td>
 <a href="Edit.jsp?id=<%=resultSet.getInt("id")%>">Update </a>
 <a href="Delete.jsp?id=<%=resultSet.getInt("id")%>">Delete</a>                     
 </td>
</tr>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>