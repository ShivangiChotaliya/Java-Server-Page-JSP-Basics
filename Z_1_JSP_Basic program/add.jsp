<%@ page import="java.util.*"%>  <!-- Directive-->
<%@ page language="java" contentType= "text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>No Title</title>
</head>
<body bgcolor="pink">
    <!-- declaration tag-->
    <%!      
        int i=0;
    %>
    <!-- Scriplet-->
    <%       
    int x,y;
    x=Integer.parseInt(request.getParameter("num1"));
    y=Integer.parseInt(request.getParameter("num2"));
    out.print("Sum is : " + (x+y));
    %>

    <!-- Expression-->
    Sum  using tag is <%=(x+y)%>

</body>
</html>