<%@page import="com.mongodb.*"%>
<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin verification</title>
</head>
<body>
<%
String user = request.getParameter("user");
String pass = request.getParameter("pass");
if (user.equals("admin") && pass.equals("secret"))
{
	String site="admin.jsp";
	
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", site); 
	
}
else{
	
	out.println("Wrong username and password combination");
}

%>

</body>
</html>