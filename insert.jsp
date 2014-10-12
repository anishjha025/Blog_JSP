<%@page import="com.mongodb.*"%>
<%@page import="java.io.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert</title>
</head>
<body background="image.jpg">
<% 
	DBCollection blogs;
	MongoClient mongo = new MongoClient("localhost",27017);
	DB db =mongo.getDB("blog");
	blogs =db.getCollection("blogs");
	
	String title = request.getParameter("ti");
	String body = request.getParameter("bo");
	blogs.insert(new BasicDBObject().append("Title",title).append("Body",body));
	String site="index.jsp";
	
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", site); 
%>


</body>
</html>