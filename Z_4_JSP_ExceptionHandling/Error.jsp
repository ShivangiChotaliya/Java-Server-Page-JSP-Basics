
<%@ page language="java" contentType= "text/html; charset=UTF-8" 
    pageEncoding="UTF-8" isErrorPage="true"  %>

<!DOCTYPE html>
<html>
<head>
    <title>No Title</title>
</head>
<body bgcolor="pink">
    <h1>Error Page</h1>
    Error
    <!-- to use excepton object page must be ErrorPage
        Using  isErrorPage="true"  
    -->
    <%= exception.getMessage() %>
  
</body>
</html>

