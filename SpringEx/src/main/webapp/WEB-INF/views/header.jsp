<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%
    String clientId = "RhYUDtcrGAZKn45AMi7b";//애플리케이션 클라이언트 아이디값";
    String redirectURI = URLEncoder.encode("http://localhost:8080/callback", "UTF-8");
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();
    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiURL += "&client_id=" + clientId;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&state=" + state;
    session.setAttribute("state", state);
 %>
	<header>
		<div class="header_1">
			<div class="header_1_menu">
				<a href="#">한국어</a> <a href="#">English</a> <a href="#">中文</a> <a
					href="#">日本語</a>
			</div>
		</div>
		<div class="header_2">
			<div class="logo">
				<a href="index.html"><img src="/resources/img/Logo_white 1.png"
					alt="Hospital_logo" /></a>
			</div>
			<div class="header_2_menu">
				<a href="certificate.html">예약/제증명</a> <a href="#">진료과</a> <a
					href="#">병원소개</a> <a href="#">찾아오시는길</a>
			</div>
			<div class="login">
				<a onclick="loginForm_btn()">로그인</a>
			</div>
		</div>
		<div class="login_form">
			<div class="login_member">
				<div style="padding: 50px 0;">
					<h1>로그인</h1>
					<p>글로벌메디컬대학병원 홈페이지 회원 서비스는</p>
					<p>로그인 후 이용 가능합니다.</p>
				</div>
				<c:if test="${not empty error}">
					<div style="color: red;">${error}</div>
				</c:if>
				<form id="loginForm"
					action="${pageContext.request.contextPath}/login" method="post">
					<div class="login_container">
						<input type="text" id="id" name="id" placeholder="아이디를 입력하세요">
						<input type="password" id="password" name="password"
							placeholder="비밀번호를 입력하세요"> <input class="login_btn"
							type="submit" id="loginButton" value="로그인">
					</div>
				</form>
				<div class="serch_user_info">
					<a href="membership.html">회원가입</a> <span> | </span> <a
						href="search_id" class="btn btn-facebook btn-user btn-block">아이디찾기</a>
					<span> | </span> <a href="#">비밀번호찾기</a>
				</div>
				<div class="sns_login">
					<a href="#" id="kakaoLogin"> <img
						src="/resources/img/kakao_login_large_narrow.png">
					</a> <a href="<%= apiURL %>" id="naverIdLogin"> <!-- 여기에 네이버 로그인 이미지 추가 -->
					</a>
				</div>
			</div>
			<div class="login_staff_only">
				<div style="padding: 50px 0;">
					<h1>직원 전용 로그인</h1>
					<p>글로벌메디컬대학병원 의료진 전용 로그인입니다.</p>
					<p>관계자가 아닐경우 일반 로그인을 이용해주세요.</p>
				</div>
				<form id="loginForm"
					action="${pageContext.request.contextPath}/login" method="post">
					<div class="login_container">
						<input type="text" id="id" name="id" placeholder="아이디를 입력하세요">
						<input type="password" id="password" name="password"
							placeholder="비밀번호를 입력하세요"> <input class="login_btn"
							type="submit" id="loginButton" value="로그인">
					</div>
					<p style="text-decoration: underline; color: #ff0000;">*부정 사용할
						경우 관련 법에 따라 처벌받을 수 있습니다.</p>
					<input class="locker" type="checkbox"> 확인했습니다.
				</form>
			</div>
			<button class="exit_btn" onclick="loginForm_btn()">닫기</button>
		</div>
	</header>
</body>
</html>