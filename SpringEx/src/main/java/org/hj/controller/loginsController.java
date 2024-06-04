package org.hj.controller;


import java.util.Locale;

import org.hj.model.ExamVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class loginsController {
//	@GetMapping("/logins")
//	public String showloginpage() {
//		return "logins"; // login.jsp 또는 login.html
//	}
//	@RequestMapping(value = "/logins", method = RequestMethod.GET)
//	// 접근제어자  반환타입  메서드명(매개변수, 매개변수)
//	public String go() { // int는 정수만 저장 model은 모델 클래스 타입 참조형 타
//		return "logins"; //forward(web
//	}
	@RequestMapping(value = "/logins", method = RequestMethod.GET)
	// 접근제어자  반환타입  메서드명(매개변수, 매개변수)
		public String home() {
			return "logins";
		}
}
