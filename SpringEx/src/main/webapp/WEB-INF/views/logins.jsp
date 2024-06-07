<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="google-signin-client_id" content="YOUR_CLIENT_ID.apps.googleusercontent.com">
    <title>로그인 페이지</title>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
    <style>
        /* body 전체적인 설정*/
        body {
            margin: 0;
            padding: 0px;
        }

        * {
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #FD6161;
            height: 130px;
            max-width: 1920px;
            min-width: 1440px;
        }

        .topbar {
            background-color: #ffffff;
            border-radius: 200px 0px 0px 0px/100px 0px 0px 0px;
            height: 100px;
            z-index: 3;
        }

        .navMenu {
            display: flex;
            justify-content: space-evenly;
            align-items: center;
            height: 100%;
        }

        .dropdown {
            display: inline-block;
        }

        .dropbtn {
            border: none;
            background-color: transparent;
            font-size: 1em;
            height: 20px;
            width: 100px;
            margin: 40px auto;
            font-weight: bold;
            font-family: AppleSDGothicNeoEB;
        }

        .dropbtnLeanguage {
            border: none;
            font-size: 1em;
            background-color: transparent;
            font-family: AppleSDGothicNeoEB;
        }

        .leanguageMenu {
            width: auto;
            height: auto;
            display: none;
            position: absolute;
            z-index: 5;
        }

        .dropbtnLeanguage:hover .leanguageMenu {
            display: block;
        }

        .dropdownMenu {
            width: auto;
            height: auto;
            display: none;
            border-radius: 15px;
            position: absolute;
            background-color: #ffffff;
            z-index: 4;
        }

        .dropdownMenu a {
            color: #000000;
            margin: 20px 25px;
            border-bottom: 3px solid transparent;
            display: block;
            text-decoration: none;
            text-align: center;

        }

        .dropdownMenu a:hover {
            border-bottom: 3px solid #FD6161;
            transition: all 0.4s;
        }

        .dropdown:hover .dropdownMenu {
            display: block;
        }

        .logo img {
            height: 45px;
            width: 236.5px;
        }

        .rightMenu {
            position: relative;
            display: inline-block;
        }

        .rightMenu button {
            text-decoration: none;
            border: none;
            background-color: transparent;
        }

        /* 뒤에 배경*/
        #container {
            height: 100vh;
            max-width: 1920px;
            min-width: 1440px;
            display: flex;
            margin: 0;
            justify-content: center;
            background: linear-gradient(90deg, Violet, Orange);
            align-items: center;
            position: relative;
            overflow: hidden;
            background-size: 100% 100vh;
        }

        /* 후지산 사진 전체블록 설정*/
        #huzi-container {
            position: relative;
            display: flex;
            align-items: center;
            height: 100%;
        }

        /* 후지산 사진*/
        #huzi {
            border: 1px solid black;
            border: none;
            border-radius: 10px 0px 0px 10px;
            box-shadow: -5px 5px 10px gray;
            width: 500px;
            height: 700px;
            padding: auto;
        }

        /* 후지산 사진 밑에 로고*/
        #huzilogo {
            position: absolute;
            bottom: 150px;
            left: 25%;
        }

        /* main 전체적인 화면*/
        #main-container {
            display: flex;
            align-items: center;
        }

        /* main 화면*/
        #main {
            position: relative;
            background-color: white;
            border: none;
            border-radius: 0px 10px 10px 0px;
            width: 500px;
            padding: 10px;
            height: 700px;
            box-shadow: 5px 5px 10px gray;
            box-sizing: border-box;
        }

        /* 로고 사진*/
        #logo {
            margin: 15px auto;
            display: grid;
        }

        /* 로그인 제목*/
        h1 {
            padding-left: 20px;
            margin-bottom: 15px;
            /* 왼쪽 패딩을 추가하여 오른쪽으로 이동 */
        }

        /*아이디 */
        #id {
            float: left;
        }

        /*비밀번호 */
        #password {
            float: left;
        }

        /*아이디, 비밀번호 찾기 스타일 */
        #name,
        #pass {
            box-sizing: border-box;
            display: block;
            width: 90%;
            height: 2rem;
            border: 0;
            border-bottom: 1px solid #00256c;
            border-radius: 0;
            color: #000;
            font-size: 20px;
        }

        /*아이디 비밀번호 칸 마우스 클릭했을 때 */
        #name:hover,
        #pass:hover {
            border-width: 0 0 1px;
            border-color: black;
            box-shadow: 0 0 0 1px lightcoral;
            transition: padding .2s, border .2s, background .2s, color .2s, box-shadow .2s;
            outline: 0;
            border-bottom-color: transparent;
            border-radius: .2rem;
        }

        /*비밀번호 저장 체크 박스 위치 */
        [type="checkbox"] {
            float: left;
            /* 왼쪽으로 이동 */
            margin-right: 5px;
            /* 원하는 만큼 오른쪽 여백 추가 */
        }

        /*비밀번호 저장 체크 박스 색상 */
        [type="checkbox"] {
            accent-color: red;
        }

        /*아이디, 저장 체크버튼 */
        label[for="checkin"] {
            position: relative;
            top: -5.5px;
            float: left;
        }

        /*전체적인 라벨 */
        #label {
            width: 100%;
            padding: 0 20px;
            box-sizing: border-box;
            text-align: center;
        }

        /*이건 머임 */
        #sw,
        #sa {
            margin-top: 10px;
            padding: 10px;
            width: 100%;
        }


        /*로그인 버튼 */
        #login {
            background-color: lightcoral;
            width: 95%;
        }

        #login:hover {
            background: linear-gradient(90deg, Violet, Orange);
        }

        /*회원가입 버튼 */
        .lojo {
            padding: 10px 20px;
            border: 1px solid black;
            color: white;
            border: none;
            background-color: lightcoral;
            position: relative;
            /* 부모 요소(main)를 기준으로 위치 조정 */
            border-radius: 30px 50px 50px 0px;
            text-align: center;
            padding: 10px;
            width: 20%;
            text-decoration: none;
            margin-top: 25px;
            margin-left: auto;
            margin-right: auto;
            font-size: 20px;
            float: right;
            transition: background-color 0.3s;
        }

        .lojo:hover {
            background: linear-gradient(90deg, Violet, Orange);
            color: white;
        }

        /*아이디, 비밀번호 찾기 스타일 */
        #findid,
        #findpa {
            display: inline-block;
            text-align: center;
            margin-top: 35px;
            margin-left: 30px;
            text-decoration: none;
            color: black;
            border: 1px solid transparent;
            border-radius: 5px;
            padding: 5px 10px;
            transition: border-color 0.3s;
            background-color: white;
            margin-right: 20px;
            font-size: 15px;
        }
        #findpa {
            margin-left: 15px;

        }

        #findid,
        #findpa>a {
            text-decoration: none;
        }

        a {
            text-decoration: none;
        }

        /*아이디, 비밀번호 찾기 마우스 올렸을 때 */
        #findid:hover,
        #findpa:hover {
            border-color: lightcoral;
        }

        /*main2 구역 */
        #main2 {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            margin-top: 20px;
        }


        #kakao,
        #google,
        #naver {
            width: 100%;
            margin-bottom: 10px;
        }

        #kakao>a,
        #google>a,
        #naver>a {
            display: block;
            width: 100%;
            text-align: center;
            text-decoration: none;
            color: black;
            border: 1px solid black;
            border-radius: 5px;
            padding: 5px;
            border: none;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 50px;
        }

        .item {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
            border: 1px solid transparent;
            /* 투명한 테두리 설정 */
            padding: 5px;
            /* 내부 여백 조정 */
            border-radius: 20px;
            transition: border-color 0.3s, background-color 0.3s;
        }

        /* 호버 시 테두리와 배경색 변경 */
        .item:hover {
            border-color: lightcoral;
        }

        /* 이미지에 여백 추가 */
        .item img {
            margin-right: 15px;
        }

        /* 텍스트 스타일 조정 */
        .item div {
            display: flex;
            flex-direction: column;
        }

        .item strong {
            font-size: 18px;
            color: #00256c;
        }

        .item span {
            color: #555;
        }

        .item a {
            display: flex;
            align-items: center;
            text-decoration: none;
        }

        .item div {
            display: flex;
            flex-direction: column;
        }

        .item span {
            margin-bottom: 5px;
        }

        footer {
            max-width: 1920px;
            min-width: 1440px;
        }

        .footerInfos {
            display: flex;
            padding: 0.5% 15%;
            justify-content: space-between;
            text-align: left;
            border-top: 1px solid #939393;
        }

        .fooerInfoSns {
            display: flex;
        }

        .footerInfoTitle {
            color: #FD6161;
            font-weight: bold;
            font-size: 1.5em;
        }

        .snsIcon {
            padding: 10% 8%;
        }

        .snsIcon a {
            text-decoration: none;
        }

        .snsIcon img {
            display: flex;
            margin: 0px auto;
        }

        .snsIcon p {

            color: #000000;
            font-size: 0.3em;
            font-weight: bolder;
        }

        .footerLinks {
            padding: 0 15%;
        }

        .links {
            display: flex;
            width: 50%;
            justify-content: space-between;
        }

        .links a {
            margin-top: 1%;
            color: #000000;
            font-weight: bold;
        }

        .companyInfo {
            margin-top: 2%
        }
    </style>
</head>
<body>
 <header>
        <div class="topbar">
            <div class="navMenu">
                <div class="logo">
                    <a href="#"><!--메인화면 이동 링크-->
                        <img src="/resources/img/logo.png">
                    </a>
                </div>
                <div class="dropdown">
                    <button class="dropbtn">항공권예매
                    </button>
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
                        <a href="#">나의 여정</a>
                        <a href="#">여정 변경</a>
                        <a href="#">여정 취소</a>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropbtn">멤버십
                    </button>
                    <div class="dropdownMenu">
                        <a href="#">제트 멤버십 혜택</a>
                        <a href="#">제트 멤버십 가입</a>
                        <a href="#">멤버십 가입 해지</a>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropbtn">온라인면세점
                    </button>
                    <div class="dropdownMenu">
                        <a href="#">공항별 면세점 위치</a>
                        <a href="#">Jet Shop</a>
                        <a href="#">면세점 이용 안내</a>
                    </div>
                </div>
                <div class="rightMenu">
                    <button href="#">로그인</button>
                    <span>&nbsp|&nbsp</span>
                    <div class="dropdown">
                        <button class="dropdownMen">한국어 / Korean ▼</button>
                        <div class="dropdownMenu">
                            <a href="#">한국어</a>
                            <a href="#">English</a>
                            <a href="#">日本語</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <main>
    <div id="container">
        <div id="huzi-container">
            <img src="/resources/img/huzz.jpg" id="huzi">
            <img src="/resources/img/logo copy.png" id="huzilogo">
        </div>
        <div id="main-container">
            <div id="main">
                <img src="/resources/img/logo.png" id="logo">
                <h1>로그인</h1>
                <c:if test="${not empty errorMessage}">
                    <p style="color: red;">${errorMessage}</p>
                </c:if>
                <form id="loginForm" action="${pageContext.request.contextPath}/login" method="post">
                    <label for="id">아이디</label><br>
                    <input type="text" id="id" name="id"> <br>
                    <label for="password">비밀번호</label><br>
                    <input type="password" id="password" name="password"> <br>
                    <div id="id_save">
                        <input type="checkbox" name="autoLogin" value="true">
                        <label for="autoLogin">자동 로그인</label>
                    </div>
                    <button id="loginButton" type="submit">로그인</button>
                    <a href="#" id="join" class="logo lojo">회원가입</a>
                    <button onclick="findid()" id="findid">
                        <a href="http://127.0.0.1:5500/mini/idfind.html" target="_blank">아이디 찾기 ></a>
                    </button>
                    <button onclick="findpass()" id="findpass">
                        <a href="http://127.0.0.1:5500/mini/passwordfind.html" target="_blank">비밀번호 찾기 ></a>
                    </button> <br>
                    <div class="container">
                        <div class="item">
                            <a href="#" id="kakaoLogin">
                                <img src="/resources/img/kakao_logo.png" alt="카카오 로고">
                                <div>
                                    <strong>카카오톡</strong>
                                    <span>카카오 로그인</span>
                                </div>
                            </a>
                    </div>
                    <div id="naverIdLogin"></div>
            </form>
        </div>
    </div>
</div>


    </form>
    </main>
   
</body>
<script type="text/javascript">
var naverLogin = new naver.LoginWithNaverId(
    {
        clientId: "RhYUDtcrGAZKn45AMi7b",
          // 본인의 Client ID로 수정, 띄어쓰기는 사용하지 마세요.
        callbackUrl: "http://localhost:8080/fi",
          // 본인의 callBack url로 수정하세요.
        isPopup: false,
        loginButton: {color: "white", type: 3, height: 60}
          // 네이버 로그인버튼 디자인 설정. 한번 바꿔보세요:D
    }
);
naverLogin.init();
    // 카카오톡 로그인
    function saveToDos(token) { //item을 localStorage에 저장합니다. 
        typeof (Storage) !== 'undefined' && sessionStorage.setItem('AccessKEY', JSON.stringify(token));
    };

    window.Kakao.init('본인 JAVASCRIPT API 키');

    function kakaoLogin() {
        window.Kakao.Auth.login({
            scope: 'profile_nickname, account_email', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
            success: function (response) {
                saveToDos(response.access_token)  // 로그인 성공하면 사용자 엑세스 토큰 sessionStorage에 저장
                window.Kakao.API.request({ // 사용자 정보 가져오기 
                    url: '/v2/user/me',
                    success: (res) => {
                        const kakao_account = res.kakao_account;
                        alert('로그인 성공');
                        window.location.href = '/ex/kakao_login.html'
                    }
                });
            },
            fail: function (error) {
                console.log(error);
            }
        });
    };

    const login = document.querySelector('#kakaoLogin');
    login.addEventListener('click', kakaoLogin);
    //카카오톡 로그아웃
    window.Kakao.init('본인 JAVASCRIPT API 키');
    function kakaoLogout() {
        if (!Kakao.Auth.getAccessToken()) {
            console.log('Not logged in.');
            return;
        }
        Kakao.Auth.logout(function (response) {
            alert(response + ' logout');
            window.location.href = '/'
        });
    };
    function onSignIn(googleUser) {
        var profile = googleUser.getBasicProfile();
        console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
        console.log('Name: ' + profile.getName());
        console.log('Image URL: ' + profile.getImageUrl());
        console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
    }


    /* function loginWithNaver() {
        var clientId = "RhYUDtcrGAZKn45AMi7b"; // 네이버 애플리케이션 클라이언트 아이디
        var redirectURI = encodeURIComponent("http://localhost:8080/jspexample/callback.jsp?callback_url=%EC%84%9C%EB%B2%84%EC%A3%BC%EC%86%8C"); // 콜백 URL
        var state = Math.random().toString(36).substring(7); // 랜덤한 state 값 생성
        sessionStorage.setItem("state", state); // state 값 세션에 저장

        // 네이버 OAuth 인증 URL
        var authURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code"
                    + "&client_id=" + clientId
                    + "&redirect_uri=" + redirectURI
                    + "&state=" + state;

        // 사용자를 네이버 로그인 페이지로 리다이렉트
        window.location.href = authURL;
    } */
    /* function loginWithNaver() {
        var clientId = "RhYUDtcrGAZKn45AMi7b"; // 네이버 애플리케이션 클라이언트 아이디
        var redirectURI = encodeURIComponent("http://localhost:8080/fi"); // 콜백 URL
        var state = Math.random().toString(36).substring(7); // 랜덤한 state 값 생성
        sessionStorage.setItem("state", state); // state 값 세션에 저장

        // 네이버 OAuth 인증 URL
        var authURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code"
                    + "&client_id=" + clientId
                    + "&redirect_uri=" + redirectURI
                    + "&state=" + state;

        // 사용자를 네이버 로그인 페이지로 리다이렉트
        window.location.href = authURL;
    } */
</script>

</html>
</body>
</html>