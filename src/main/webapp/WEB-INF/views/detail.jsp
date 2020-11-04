<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<body>
	<%@ include file="header.jsp"%>
	<div>
		환자번호 : ${p.pno}<br>
		환자명 : ${p.name}<br>
		나이 : ${p.age}<br>
		국적 : ${p.cname}<br>
	</div>
	<%@ include file="footer.jsp"%>
</body>

</html>