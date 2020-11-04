<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<body>
	<%@ include file="header.jsp"%>
	<form action="remove" method="post">
	<table border="1">
		<tr>
			<td>환자번호</td>
			<td>환자명</td>
			<td>나이</td>
			<td>국적</td>
			<td>삭제</td>
		</tr>
		<c:forEach var="i" items="${list}">
			<tr>
				<td><a href="search?pno=${i.pno}">${i.pno}</a></td>
				<td>${i.name}</td>
				<td>${i.age}</td>
				<td>${i.cname}</td>
				<td><input type="checkbox" id="del" name="pnos" value="${i.pno}"></td>
			</tr>
		</c:forEach>
		
	</table>
	<input type="submit" value="삭제하기">
	</form>
	<%@ include file="footer.jsp"%>
</body>
</html>