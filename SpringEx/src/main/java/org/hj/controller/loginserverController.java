package org.hj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class loginserverController {
	
    @PostMapping("/loginserver")
    public String processLogin(@RequestParam("id") String id, @RequestParam("password") String password) {
        // 여기서 사용자가 입력한 아이디와 비밀번호를 가져와서 처리합니다.
        // 이후 인증 과정을 거치고 로그인 여부를 결정합니다.
        // 로그인이 성공하면 다음 페이지로 리다이렉션하거나, 실패하면 다시 로그인 페이지로 이동합니다.
        return "redirect:/home"; // 로그인 성공 시 리다이렉션할 페이지의 URL
    }
}
