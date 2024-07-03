<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>주변 병원 찾기</title>
    <style>
        #map {
            width: 100%;
            height: 500px;
        }
        #requestBloodButton {
            margin-top: 10px;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            display: none; /* 초기에는 보이지 않도록 설정 */
        }
    </style>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=40cc655b8725105eadd83e922c398a13&libraries=services"></script>
</head>
<body>
    <h1>주변 병원 찾기</h1>
    <button onclick="getLocation()">주변 병원 찾기</button>
    <div id="map"></div>
    <ul id="places"></ul>
    <button id="requestBloodButton">혈액 요청하기</button>

    <script>
        let map;
        let ps;
        let placesList;
        let infowindow = new kakao.maps.InfoWindow({ zIndex: 1 });
        let selectedPlace = null;

        function getLocation() {
            if ("geolocation" in navigator) {
                navigator.geolocation.getCurrentPosition(
                    (position) => {
                        const { latitude, longitude } = position.coords;

                        // 지도를 해당 위치로 이동
                        const mapContainer = document.getElementById('map');
                        const mapOption = {
                            center: new kakao.maps.LatLng(latitude, longitude),
                            level: 4
                        };
                        map = new kakao.maps.Map(mapContainer, mapOption);

                        // 마커 표시
                        const marker = new kakao.maps.Marker({
                            position: new kakao.maps.LatLng(latitude, longitude),
                            map: map
                        });

                        // 장소 검색 객체 생성
                        ps = new kakao.maps.services.Places();

                        // ul 요소 초기화
                        placesList = document.getElementById("places");
                        placesList.innerHTML = ""; // 이전 결과 초기화

                        // 주변 병원 검색
                        ps.keywordSearch("병원", (data, status, pagination) => {
                            if (status === kakao.maps.services.Status.OK) {
                                data.forEach((place) => {
                                    const placeMarker = new kakao.maps.Marker({
                                        position: new kakao.maps.LatLng(place.y, place.x),
                                        map: map
                                    });

                                    // 마커 클릭 이벤트 처리
                                    kakao.maps.event.addListener(placeMarker, 'click', function() {
                                        // 온도 정보 표시
                                        let temperatureInfo = "";
                                        <c:forEach var="patient" items="${patients}">
                                            temperatureInfo += `이 병원에서 보관하고 있는 혈액 온도는 ${patient.temperature}도<br>`;
                                        </c:forEach>
                                        infowindow.setContent('<div style="padding:10px;min-width:200px;">' + place.place_name + '<br>' + temperatureInfo + '</div>');
                                        infowindow.open(map, placeMarker);

                                        // 선택된 병원 정보를 저장
                                        selectedPlace = place;
                                        // 혈액 요청 버튼을 표시
                                        document.getElementById('requestBloodButton').style.display = 'block';
                                    });
                                });
                            } else {
                                status.textContent = "주변 병원을 찾을 수 없습니다.";
                            }
                        }, {
                            location: new kakao.maps.LatLng(latitude, longitude),
                            radius: 5000 // 5km 내에서 검색
                        });
                    },
                    (error) => {
                        status.textContent = `위치 정보를 가져올 수 없습니다: ${error.message}`;
                    }
                );
            } else {
                status.textContent = "브라우저가 위치 서비스를 지원하지 않습니다.";
            }
        }

        // 혈액 요청 버튼 클릭 이벤트 처리
        var requestBloodButton = document.getElementById('requestBloodButton');
        requestBloodButton.addEventListener('click', function() {
            if (selectedPlace) {
                alert(`혈액 요청이 전달되었습니다.`);
                // 추가적인 요청 처리 로직을 여기에 추가할 수 있습니다.
            } else {
                alert('병원을 선택해주세요.');
            }
        });
    </script>
</body>
</html>
