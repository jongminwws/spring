<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google-signin-client_id"
	content="YOUR_CLIENT_ID.apps.googleusercontent.com">
<title>로그인 성공</title>
<link
	href="https://db.onlinewebfonts.com/c/67680f2eb947c5cbd58b40961b4a61e9?family=Apple+SD+Gothic+Neo+Bold"
	rel="stylesheet">
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
</head>

<body>
	<header>
		<div class="topbar">
			<div class="navMenu">
				<div class="logo">
					<a href="#"> <!--메인화면 이동 링크--> <img src="img/logo.png">
					</a>
				</div>
				<div class="dropdown">
					<button class="dropbtn">항공권예매</button>
					<div class="dropdownMenu">
						
							<a href="#">항공권 예매</a>
							<a href="#">단체 예매(10인 이상)</a>
							<a href="#">항공권 선물하기</a>
							<a href="#">이용 안내</a>
							<a href="#">전자 항공권</a>
							<a href="#">항공권 재발행</a>
						
					</div>
				</div>
				<div class="dropdown">
					<button class="dropbtn">예매 조회</button>
					<div class="dropdownMenu">
						<a href="#">나의 여정</a> <a href="#">여정 변경</a> <a href="#">여정 취소</a>
					</div>
				</div>
				<div class="dropdown">
					<button class="dropbtn">멤버십</button>
					<div class="dropdownMenu">
						<a href="#">제트 멤버십 혜택</a> <a href="#">제트 멤버십 가입</a> <a href="#">멤버십
							가입 해지</a>
					</div>
				</div>
				<div class="dropdown">
					<button class="dropbtn">온라인면세점</button>
					<div class="dropdownMenu">
						<a href="#">공항별 면세점 위치</a> <a href="#">Jet Shop</a> <a href="#">면세점
							이용 안내</a>
					</div>
				</div>
				<div class="rightMenu">
					<button href="#">로그인</button>
					<span>&nbsp|&nbsp</span>
					<div class="dropdown">
						<button class="dropdownMen">한국어 / Korean ▼</button>
						<div class="dropdownMenu">
							<a href="#">한국어</a> <a href="#">English</a> <a href="#">日本語</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<main> 
	<c:if test="${not empty sessionScope.login}">
	로그인 성공~ 
	</c:if>
	<a
		href="${pageContext.request.contextPath}/logout">로그아웃</a> </main>
		
	<footer>
		<div class="footerInfos">
			<div class="fooerInfo">
				<p class="footerInfoTitle">예약센터</p>
				<p>1234-5678</p>
				<p>00:00 ~ 24:00</p>
				<p>연중휴무</p>
			</div>
			<div class="fooerInfo">
				<p class="footerInfoTitle">고객센터</p>
				<p>5678-9123</p>
				<p>00:00 ~ 24:00</p>
				<p>연중휴무</p>
			</div>
			<div class="fooerInfo">
				<p class="footerInfoTitle">점검시간</p>
				<strong><span>월~금</span> </strong> <span>00:00 ~ 24:00</span> <br>
				<strong><span>토~일</span></strong> <span>00:00 ~ 24:00</span>
				<p>(한국시간 기준)</p>
			</div>
			<div class="fooerInfo">
				<p class="footerInfoTitle">마케팅/광고 문의</p>
				<p>wkdwhd43@naver.com</p>
				<p>디자이너 이메일</p>
			</div>
			<div class="fooerInfoSns">
				<div class="snsIcon">
					<a href="#"> <img src="img/instagram.png">
						<p>@___jm109</p>
					</a>
				</div>
				<div class="snsIcon">
					<a href="#"> <img src="img/youtube.png">
						<p>Jet_Airlines</p>
				</div>
				</a>
			</div>
		</div>
		<div class="footerLinks" style="background-color: #8F8F8F;">
			<div class="links">
				<a href="#">
					<p>회사안내</p>
				</a> <a href="#">
					<p>보도자료</p>
				</a> <a href="#">
					<p>채용정보</p>
				</a> <a href="#">
					<p>운송약관</p>
				</a> <a href="#">
					<p>이용약관</p>
				</a> <a href="#">
					<p>개인정보이용안내</p>
				</a>
			</div>
			<div class="companyInfo">
				<p>JetAirlines㈜ 대표이사 곽두팔 사랑시 고백구 행복동 (우)12345</p>
				<p>개인정보보호책임자 강백호</p>
				<p>온라인 마케팅 팀장 김청룡</p>
				<p>Copyright 2024 BY ZET AIRLINES. All Rights reserved</p>
			</div>
		</div>
	</footer>
</body>

</html>