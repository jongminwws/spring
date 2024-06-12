package org.hj.controller;

import javax.servlet.http.HttpSession;

import org.hj.model.NaverVo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class NaverController {

    @RequestMapping("/naver.do")
    public String naver() {
        return "naver_login"; // 네이버 로그인 화면으로 이동
    }
    
    @RequestMapping(value="/callback", method=RequestMethod.GET)
    public String callBack() {
        return "fi"; // 네이버 로그인 콜백 처리 페이지로 이동
    }
    
    @ResponseBody
    @RequestMapping(value="naverSave", method=RequestMethod.POST)
    public String naverSave(@RequestParam("n_age") String n_age, 
                            @RequestParam("n_birthday") String n_birthday, 
                            @RequestParam("n_email") String n_email, 
                            @RequestParam("n_gender") String n_gender, 
                            @RequestParam("n_id") String n_id, 
                            @RequestParam("n_name") String n_name, 
                            @RequestParam("n_nickName") String n_nickName,
                            HttpSession session) {
        
        // 받은 데이터를 콘솔에 출력
        System.out.println("Received data from Naver API:");
        System.out.println("n_age: " + n_age);
        System.out.println("n_birthday: " + n_birthday);
        System.out.println("n_email: " + n_email);
        System.out.println("n_gender: " + n_gender);
        System.out.println("n_id: " + n_id);
        System.out.println("n_name: " + n_name);
        System.out.println("n_nickName: " + n_nickName);

        // NaverVo 객체 생성 및 데이터 설정
        NaverVo naver = new NaverVo();
        naver.setN_age(n_age);
        naver.setN_birthday(n_birthday);
        naver.setN_email(n_email);
        naver.setN_gender(n_gender);
        naver.setN_id(n_id);
        naver.setN_name(n_name);
        naver.setN_nickName(n_nickName);
        
        // 세션에 NaverVo 객체 저장
        session.setAttribute("naverUser", naver);

        // 클라이언트에 응답
        return "ok"; // 클라이언트 측 JavaScript에서 성공 여부를 처리할 수 있도록 함
    }
}