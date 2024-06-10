package org.hj.controller;

import javax.servlet.http.HttpSession;

import org.hj.service.LoginsService;
import org.hj.model.logins;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class loginController {

    @Autowired
    private LoginsService loginsService;  // LoginsMapper 대신 LoginsService를 사용합니다

    @RequestMapping(value = "/logins", method = RequestMethod.GET)
    public String loginForm() {
        return "logins";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(HttpSession session, @ModelAttribute("member") logins member, Model model) {
        logins loginResult = loginsService.logins(member);

        if (loginResult == null) {
            model.addAttribute("errorMessage", "아이디 또는 비밀번호가 틀렸습니다.");
            return "index";
        } else {
            session.setAttribute("login", loginResult);
            return "redirect:/fi";
        }
    }

    @RequestMapping(value = "/fi", method = RequestMethod.GET)
    public String userInfo(HttpSession session, Model model) {
        logins loginResult = (logins) session.getAttribute("login");

        if (loginResult != null) {
            model.addAttribute("loginUser", loginResult.getUsername()); // 사용자 이름을 모델에 추가
            return "fi";
        } else {
            return "redirect:/logins";
        }
    }
    
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        session.removeAttribute("login"); // 세션에서 로그인 정보 제거
        session.invalidate(); // 세션 무효화
        return "redirect:/index";
    }
}
