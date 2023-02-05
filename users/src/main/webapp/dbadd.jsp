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
try{
	if(request.getParameter("button_add")!=null)
    {
	Connection con = null;
	Class.forName("org.postgresql.Driver"); 
    con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","@hema");
    		
		PreparedStatement pstmt = con.prepareStatement("INSERT INTO users (id,name,email,country) VALUES(?,?,?,?)");
			
			pstmt.setInt(1, Integer.parseInt(request.getParameter("id")));
			pstmt.setString(2, request.getParameter("name"));
			pstmt.setString(3, request.getParameter("email"));
			pstmt.setString(4, request.getParameter("country"));
			pstmt.executeUpdate();
			
			con.close();
    }	
	%>
	<script>
	alert("Insert successfully")
	</script>
	<div align="center">
<p><a href="Index.jsp">Click Back</a></p>
</div>
	<%
}
catch(Exception e){       
    out.println("something went wrong");       
} 
%>

</body>
</html>