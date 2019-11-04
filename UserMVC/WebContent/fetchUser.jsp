<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.lti.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% User u=(User)session.getAttribute("userById");
if(u!=null)
{
%>
<center>
       <form method="POST" action="http://localhost:9090/UserMVC/FetchController" >
              ID: <input type="number" name="id" width="100px" value="<%= u.getId() %>">
          
            <br><br>
            Name: <input type="text" name="name" width="100px" value="<%= u.getName() %>">
            
            <br><br>
            email: <input type="text" name="email" width="100px" value="<%= u.getEmail() %>">
            <br><br>
            password: <input type="password" name="password" width="100px" value="<%= u.getPassword() %>">
            <br><br>
            
            <input type="submit" value="Login">
        </form>

</center>
<%
}
else
{
%>
<h1>No records found</h1>
<%
}
%>
</body>
</html>