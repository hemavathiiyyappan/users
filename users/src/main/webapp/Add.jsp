<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name = f1>
<div align = "center">
<h1>ADD NEW USERS</h1>

<table border ="1" cellpadding ="5">
<tr>
                <th>Id :</th>
                <td> <input type = "text" name = "id" placeholder = "Id"/></td>
</tr>
<tr>
                <th>Name :</th>
                <td> <input type = "text" name = "name" placeholder = "Name"/></td>
</tr>
<tr>                
                <th>Email :</th>
                <td><input type = "text" name = "email" placeholder = "Email"/></td>               
</tr>
<tr>                
                <th>Country :</th>
                <td><input type = "text" name = "country" placeholder = "Country"/></td>
</tr>
<tr>
            
<td><input type = "submit" name = "button_add" value = "submit" onclick = "f1.action = 'dbadd.jsp'"/></td>
</tr>
<div align="center">
<p><a href="Index.jsp">Click Back</a></p>
</div>
</table>
</div>
</form>
</body>
</html>