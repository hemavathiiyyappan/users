<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
</head>
<body>
<div align = "center">


<%
         Connection con = null;
         PreparedStatement pstmt = null;
         ResultSet rs = null;
         try {
        	 Class.forName("org.postgresql.Driver");
        	 } catch (ClassNotFoundException e) {
        	 e.printStackTrace();
        	 }

         try{
         Class.forName("org.postgresql.Driver"); 
         con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","@hema");
         pstmt = con.prepareStatement("select * from users where id = ?");
         pstmt.setInt(1, Integer.parseInt(request.getParameter("id")));
         rs=pstmt.executeQuery();
         while(rs.next())
         {
%>
<h1>EDIT USERS</h1>
<form name=f2>
<div>
<table border ="1" cellpadding ="5">
<tr>
<input type="hidden" name="id" value="<%=rs.getInt("id") %>">
</tr>
<tr>
                <th>Name :</th>
                <td> <input type = "text" name = "name" placeholder = "Name"  value=<%=rs.getString("name") %>/></td>
</tr>
<tr>                
                <th>Email :</th>
                <td><input type = "text" name = "email" placeholder = "Email" value=<%=rs.getString("email") %>/></td>               
</tr>
<tr>                
                <th>Country :</th>
                <td><input type = "text" name = "country" placeholder = "Country" value=<%=rs.getString("country") %>/></td>
</tr>
            
<tr>
<td><input type = "submit" name = "save" value = "Save" onclick = "f2.action = 'dbedit.jsp'"/></td>
     <div align="center">
     <p><a href="Index.jsp">Click Back</a></p>
  <% }
         
         } catch (Exception e) {
e.printStackTrace();
}%>    
</div>
</tr>
</table>
</div>
</form>
</div>
</body>
</html>