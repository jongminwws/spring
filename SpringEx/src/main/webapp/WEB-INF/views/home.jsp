<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>Home</title>
	<style type="text/css">
	/* 내부 css 파일 */
	</style>
	<!--외부 css 파일  -->
	<style type="text/css" href="/resources/css/dropmenu.css">
	</style>
</head>
<body>
<h1>
	Hello world!
</h1>
Main page입니다.<br><br>
<input type=button value="로그인 하러가기" onclick="location.href='http://localhost:8080/logins'">
<a href="/logins">test</a>
<a href="/admin/login">관리자 계정</a>
<a href="/go">go</a>
<a href="/exam?a=12347777&b=456">ㄷ</a>
</body>
</html>
