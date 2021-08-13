<%@ page import="java.util.*"%>  <!-- Page Directive-->
<%@ page language="java" contentType= "text/html; charset=UTF-8" 
    pageEncoding="UTF-8" import="java.sql.Statement,java.util.Random" %>
<%@ include file="header.jsp"%>  <!-- Incude Directive-->


<!DOCTYPE html>
<html>
<head>
    <title>No Title</title>
</head>
<body bgcolor="pink">
    <h1>Body Content</h1>
    <%--    pageContext use to set and get the value using (setAttribute and getAttribute)
            avaliable only in current page
            we provide scope to increrse scope 
    --%>
    <%
        
        pageContext.setAttribute("Name","Shivangi",pageContext.SESSION_SCOPE);
        String name=(String)pageContext.getAttribute("Name",PageContext.SESSION_SCOPE);  
        out.print("Hello "+name);  
    %>
    
  
</body>
</html>


<!--
    Built in Objects

    request (HttpServletRequest)
    response (HttpServletResponse)
    pageContext (PageContext)
    out (JspWriter) ~ PrintWriter object
    session (HttpSession)
    application (ServletContext)
    config (ServletConfig)
-->