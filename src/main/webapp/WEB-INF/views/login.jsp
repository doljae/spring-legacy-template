<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<body>
<div>

<form action="login" method="post">
	아이디 : <input type="text" name="username">
	비밀번호 : <input type="password" name="password">
	<button type="submit" id="loginBtn">로그인</button>
</form>

</div>


<%@ include file="footer.jsp"%>
	
</body>
</html>