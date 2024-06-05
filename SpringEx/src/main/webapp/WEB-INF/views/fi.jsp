<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <c:if test="${not empty login}">
    <p>로그인 ID: ${login.id}</p>
    <p>이름: ${login.name}</p>
    <p>이메일: ${login.email}</p>
    <!-- 필요한 회원 정보 항목을 추가 -->
</c:if>

<c:if test="${empty login}">
    <p>로그인을 하지 않았습니다.</p>
</c:if>
</body>
</html>