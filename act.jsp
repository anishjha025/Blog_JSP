<%@page import="com.mongodb.*"%>
<%@page import="java.io.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin</title>
</head>
<body background="image.jpg">
<% 
	DBCollection blogs;
	MongoClient mongo = new MongoClient("localhost",27017);
	DB db =mongo.getDB("blog");
	blogs =db.getCollection("blogs");
%>

<%
	if(request.getParameter("A")!=null)
	{
%>
	<form action ="insert.jsp" method="post">
	<center>
		<h2>Create new post</h2>
		<div align ="center">
			<h3>Title</h3><br><input type ='text' name ='ti'/>
			<br>
			<h3>Body</h3><br><textarea cols="100" rows="50" name="bo">
			</textarea><br />
			<br>

		</div>
		
		<input type ='submit' value='Enter'/>
	
	
	</center>

	</form>	
	
<% 	
	}

%>
<%
	if(request.getParameter("C")!=null)
	{
%>
	<form action ="delete.jsp" method="post">
	<center>
		<h2>Enter the title of the post to be deleted</h2>
		<div align ="center">
			<h3>Title</h3><br><input type ='text' name ='ti'/>
			<br>
			

		</div>
		
		<input type ='submit' value='Enter'/>
	
	
	</center>

	</form>	
	
<% 	
	}

%>


</body>
</html>