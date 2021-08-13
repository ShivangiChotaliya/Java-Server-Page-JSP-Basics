<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>no title</title>
</head>
<body>

    <c:set var="str" value="Shivangi is a Developer" />
    Length : ${fn:length(str)}

    <c:forEach items="${fn:split(str,' ')}" var="s">
    <br>
    ${s}
    </c:forEach>

    <!-- Split using char 'a'-->
    <c:forEach items="${fn:split(str,'a')}" var="s">
    <br>
    ${s}
    </c:forEach>

    </br>
    index : ${fn:indexOf(str,"is")}

    </br>
    is there : ${fn:contains(str,"Dev")}
    

    </br>
    <c:if test= "${fn:contains(str,'Dev')}" >
        jsp is there
    </c:if>
   
    
    </br>
    <c:if test= "${fn:endsWith(str,'er  ')}" >
        you are right
    </c:if>

    ${fn:toUpperCase(str)}

</body>
</html>