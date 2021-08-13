<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>no title</title>
</head>
<body>


    <sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost/dbstudent" user="root" password="" />
    <sql:query var="rs" dataSource="${db}">select * from student</sql:query>

    <c:forEach items="${rs.rows}" var="stud">
    </br><c:out value="${stud.rollno}"></c:out> : <c:out value="${stud.name}"></c:out> : <c:out value="${stud.email}"></c:out>

    </c:forEach>
</body>
</html>