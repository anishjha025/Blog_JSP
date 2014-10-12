<%@page import="com.mongodb.*"%>
<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Blog Admin</title>
</head>
<body background="image.jpg">
<center>
<h1>Admin's module</h1>
<form name="Select" action="act.jsp" method="GET">
			<input type="submit" name="A" value="NEW POST"style="width: 200px; height: 30px;" /> 
			<br> <br> 
			<input type="submit" name="B" value="EDIT"style="width: 200px; height: 30px;" /> 
			<br> <br> 
			<input type="submit" name="C" value="DELETE A POST"style="width: 200px; height: 30px;" /> 
			<br> <br> 
		

		</form>
</center>

</body>
</html>