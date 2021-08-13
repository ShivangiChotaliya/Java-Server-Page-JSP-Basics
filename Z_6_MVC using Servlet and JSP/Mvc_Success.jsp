<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Guru Success</title>
</head>
<body>
<%--TestBean testguru=(TestBean)request.getAttribute("gurubean");  
out.print("Welcome, "+testguru.getEmail());   --%>

<%  
    String str =request.getAttribute("gurubean");
    out.println(str);
%>
</body>
</html>