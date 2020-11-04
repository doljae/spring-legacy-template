<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
<c:if test="${empty user}"><a href="login">로그인하세요</a></c:if>
<c:if test="${!empty user}">${user}님 안녕하세요
	<a href="logout">로그아웃</a>
</c:if>
</div>
<hr>
</body>
</html>