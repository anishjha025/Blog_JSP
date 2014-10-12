<%@page import="com.mongodb.*"%>
<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Anish Jha's Blog</title>
</head>
<body background="image.jpg">
<center>
<h1>Anish Jha's Blog</h1>
<button onclick="window.location.href='auth.jsp'">ADMIN</button>
</center>
<%
	DBCollection blogs;
	MongoClient mongo = new MongoClient("localhost",27017);
	DB db =mongo.getDB("blog");
	blogs =db.getCollection("blogs");
	DBCursor cursor =blogs.find();
	while(cursor.hasNext())
	{
		DBObject obj= cursor.next();
		String t=(String)obj.get("Title");
		String b=(String)obj.get("Body");
		out.println("<h2>");
		out.println(t);
		out.println("</h2>");
		
		out.println(b);
		
		out.println("<br>");

	}
	
%>

</body>
</html>