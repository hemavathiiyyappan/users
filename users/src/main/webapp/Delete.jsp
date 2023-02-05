<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%
String id=request.getParameter("id");
try
{
Class.forName("org.postgresql.Driver");
Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","@hema");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM users WHERE id="+id);
%>
<script>
alert("Deleted successfully")
</script>
<p><a href="Index.jsp">Click Back</a></p>
<%}

catch(Exception e)
{
System.out.print("somthing wrong");
e.printStackTrace();
}
%>
</body>
</html>