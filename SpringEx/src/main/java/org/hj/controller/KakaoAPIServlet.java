/*package org.hj.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/kakaoapi")
public class KakaoAPIServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
        String apiUrl = "https://apis-navi.kakaomobility.com/v1/directions?origin=127.11015314141542,37.39472714688412&destination=127.10824367964793,37.401937080111644&waypoints=&priority=RECOMMEND&car_fuel=GASOLINE&car_hipass=false&alternatives=false&road_details=false";

        URL url = new URL(apiUrl);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Authorization", "KakaoAK " + apiKey);

        int responseCode = conn.getResponseCode();
        StringBuilder responseJson = new StringBuilder();
        
        if (responseCode == HttpURLConnection.HTTP_OK) {
            BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String inputLine;
            while ((inputLine = in.readLine()) != null) {
                responseJson.append(inputLine);
            }
            in.close();
        } else {
            responseJson.append("API 호출 실패: ").append(responseCode);
        }

        request.setAttribute("responseJson", responseJson.toString());
        request.getRequestDispatcher("/WEB-INF/views/patientList.jsp").forward(request, response);
    }
}
*/