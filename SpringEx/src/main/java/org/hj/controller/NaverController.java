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
    
}