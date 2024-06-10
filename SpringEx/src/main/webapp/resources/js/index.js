let firstSlide = 1;
let autoSlideInterval = setInterval(nextSlide, 5000);
const slides = document.querySelectorAll(".slider-container li");
const lastSlide = slides.length;

function showSlide(slideIndex) {
    slides.forEach(slide => slide.style.display = 'none');
    slides.forEach(slide => slide.style.animation = 'none');
    document.querySelector('.slide' + slideIndex).style.display = 'block';
    document.querySelector('.slide' + slideIndex).style.animation = 'slideAnimation 1s';
}

function nextSlide() {
    firstSlide = firstSlide === lastSlide ? 1 : firstSlide + 1;
    showSlide(firstSlide);
    resetAutoSlide();
}

function prevSlide() {
    firstSlide = firstSlide === 1 ? lastSlide : firstSlide - 1;
    showSlide(firstSlide);
    resetAutoSlide();
}

document.querySelector(".next").addEventListener('click', nextSlide);
document.querySelector(".prev").addEventListener('click', prevSlide);

function resetAutoSlide() {
    clearInterval(autoSlideInterval);
    autoSlideInterval = setInterval(nextSlide, 5000);
}

showSlide(firstSlide);

let loginForm_on = 1;

function loginForm_btn() {
    if (loginForm_on === 0) {
        loginForm_on++;
        document.querySelector('.login_form').style.animation = 'loginFormAnimation_off 1.5s forwards';
    } else if (loginForm_on === 1) {
        loginForm_on--;
        document.querySelector('.login_form').style.animation = 'loginFormAnimation_on 1.5s forwards';
    }
}

const checkbox = document.querySelector('.locker');
const formElements = document.querySelectorAll('.form_lock');

function updateFormLock() {
    formElements.forEach(input => {
        input.disabled = !checkbox.checked;
    });
}

checkbox.addEventListener('change', updateFormLock);

updateFormLock();
//로그인 js
var naverLogin = new naver.LoginWithNaverId({
    clientId: "RhYUDtcrGAZKn45AMi7b", // 본인의 Client ID로 수정
    callbackUrl: "http://localhost:8080/callback", // 콜백 URL을 올바르게 수정
    isPopup: false,
    loginButton: {color: "white", type: 3, height: 60} // 네이버 로그인버튼 디자인 설정
});

naverLogin.init();

// 네이버 로그인 정보가 해시 프래그먼트로 반환되는 경우 이를 처리하는 코드 추가
window.addEventListener('load', function () {
    var accessToken = new URL(window.location.href).hash.match(/access_token=([^&]+)/);
    if (accessToken) {
        naverLogin.getLoginStatus(function (status) {
            if (status) {
                // 로그인 성공 시 필요한 데이터를 서버에 전달
                var naverUser = naverLogin.user;
                $.ajax({
                    url: '/naverSave',
                    method: 'POST',
                    data: {
                        n_age: naverUser.age,
                        n_birthday: naverUser.birthday,
                        n_email: naverUser.email,
                        n_gender: naverUser.gender,
                        n_id: naverUser.id,
                        n_name: naverUser.name,
                        n_nickName: naverUser.nickName
                    },
                    success: function (response) {
                        if (response === 'ok') {
                            window.location.href = '/fi';
                        } else {
                            console.error('Failed to save Naver user info.');
                        }
                    },
                    error: function (xhr, status, error) {
                        console.error('Error occurred while saving Naver user info:', error);
                    }
                });
            } else {
                console.error('Failed to get Naver user status.');
            }
        });
    }
});

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
    //여기까지 로그인 js