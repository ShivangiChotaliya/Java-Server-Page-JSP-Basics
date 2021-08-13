<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>no title</title>
</head>
<body>


    <!-- 1)
         ${students}
         
         
         2)
         <c:out value="${students}" />     
    
         3)
    --> 
    
    <c:forEach items="${students}"  var="s" >
        ${s}</br>
    </c:forEach>

</body>
</html>