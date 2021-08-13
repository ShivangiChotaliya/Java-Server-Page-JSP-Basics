<%@ page import="java.util.*"%>  <!-- Page Directive-->
<%@ page language="java" contentType= "text/html; charset=UTF-8" 
    pageEncoding="UTF-8" import="java.sql.Statement,java.util.Random" %>
<%@ include file="header.jsp"%>  <!-- Incude Directive-->
<%@ taglib uri="uri" prefix="fx"%>


<!DOCTYPE html>
<html>
<head>
    <title>No Title</title>
</head>
<body bgcolor="pink">
    <h1>Body Content</h1>
    <br>Using Declaration Tag (outside service method and inside class code) : <%! int i=0; %> <!-- Declaration tag-->  <%= i %> 
    <br>Using Scriplet Tag (to service method): <% out.println("Hello Users"); %> <!-- scriplet tag-->
    <br>Using Expression Tag (inside service but using out.println) : <%= 7+6 %> <!-- experession tag-->
    <fx:h1></fx:h1>
  
</body>
</html>