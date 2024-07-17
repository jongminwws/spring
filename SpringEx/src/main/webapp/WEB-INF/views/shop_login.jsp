<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="/resources/css/shop_login.css">
</head>
<body>
    <header>
        <p>헤더영역</p>
    </header>

    <main>
        <div class="login_form_1">
            <h2>로그인</h2>
            <div class="login_form_2">
                <form action="/login" method="post">
                    <h4>회원 로그인</h4>
                    <input type="text" name="id" placeholder="아이디" class="input_id" maxlength="20">
                    <input type="password" name="password" placeholder="비밀번호" class="input_password" maxlength="20">
                    <div class="radio">
                        <input type="checkbox"> <span>아이디 저장</span>
                    </div>
                    <div class="login_button"><button type="submit">로그인</button></div>
                    <div class="find_button">
                        <div>
                            <a href="#" class="find_button">아이디 찾기</a>
                            <span>|</span>
                            <a href="#" class="find_button">비밀번호 찾기</a>
                        </div>
                        <div>
                            <a href="#" class="join_button">회원가입</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </main>
    <footer></footer>
</body>
</html>
