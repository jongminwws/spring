<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>글쓰기 폼</title>
</head>
<body>
    <h1>게시판 글쓰기 화면</h1>
    <form id="form" action="/write" method="post">
        제목: <input type="text" name="title"><br>
        내용: <textarea name="content"></textarea><br>
        <input type="submit" value="글쓰기">
    </form>
</body>
</html>
