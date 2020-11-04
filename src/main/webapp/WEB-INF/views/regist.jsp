<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>


<body>
	<%@ include file="header.jsp"%>
	<form action="regist" method="post">
	<div>
		<label for="pno" class="inputtitle">환자 번호</label>
		<input type="text" name="pno" id="pno">
		<br>
		<label for="name" class="inputtitle">환자명</label>
		<input type="text" name="name" id="name">
		<br>
		<label for="age" class="inputtitle">나이</label>
		<input type="number" name="age" id="age">
		<br>
		<label for="ccode" class="inputtitle">국적</label>
		<select id="ccode" name="ccode">
			<option value="2">대한민국
			<option value="1">미국
			<option value="3">이탈리아
		</select>
		<br>
	<input type="submit" id="regist" value="환자 등록">
	<button id="reset">초기화</button>
	</form>
	<hr>
	<div id="res"></div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>