<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%
String first_name=request.getParameter("name");
String last_name=request.getParameter("email");
String city_name=request.getParameter("country");

Connection con = null;
PreparedStatement ps = null;

try {
	 Class.forName("org.postgresql.Driver");
	 } catch (ClassNotFoundException e) {
	 e.printStackTrace();
	 }


try{
if(request.getParameter("save")!=null)

{
Class.forName("org.postgresql.Driver");
con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","@hema");
String sql="Update users set name=?,email=?,country=? where id=?";
ps = con.prepareStatement(sql);

ps.setString(1, first_name);
ps.setString(2, last_name);
ps.setString(3, city_name);
ps.setInt(4, Integer.parseInt(request.getParameter("id")));
int i = ps.executeUpdate();
}
%>
<script>
alert("uploded successfully")
</script>
<p><a href="Index.jsp">Click Back</a></p>

<% }
catch(SQLException sql)
{
out.println("somthing wrong");
}

%>
</body>
</html>