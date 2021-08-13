
<%@ page language="java" contentType= "text/html; charset=UTF-8" 
    pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=UTF-8">
    <title>No Title</title>
</head>
<body bgcolor="pink">
    <%!     
        String DBURL = "jdbc:mysql://localhost/dbstudent";
        String USER = "root";   
        String PASSWORD = "";
        String JDBC_DRIVER ="com.mysql.cj.jdbc.Driver";

       
    %>
    
    <h1> Header Content</h1>
    <%
        Class.forName(JDBC_DRIVER);    
        Connection con = DriverManager.getConnection(DBURL,USER,PASSWORD);
        Statement stmt = con.createStatement();
        String sql = "select * from student";
        ResultSet rs = stmt.executeQuery(sql);
        
        while(rs.next()){
         
    %>
    Roll no : <%= rs.getInt("rollno")%>  <br>
    Name : <%= rs.getString("firstname")%> <br>
    LastName : <%= rs.getString("lastname")%> <br>
    Email : <%= rs.getString("email")%> <br>

    <% } %>
</body>
</html>


<%--
 
1) import java.sql
2) load and register driver
...

--%>