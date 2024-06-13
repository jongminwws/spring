package org.hj.controller;


import java.util.Locale;

import org.hj.model.ExamVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
// 접근제어자  반환타입  메서드명(매개변수, 매개변수)
	public String home(Locale locale, Model model) {
		return "home";
	}
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	// 접근제어자  반환타입  메서드명(매개변수, 매개변수)
		public String index(Locale locale, Model model) {
			return "index";
		}
	
	@RequestMapping(value = "/drop", method = RequestMethod.GET)
	// 접근제어자  반환타입  메서드명(매개변수, 매개변수)
		public String drop() {
			return "drop";
		}
	// 스프링 4.3 전까지는 @RequestMapping( method =‘get’) 방식으로 사용
	// 스프링 4.3이후에는 @GetMapping, @PostMapping등으로 간단히 표현 가능
	@RequestMapping(value = "/exam", method = RequestMethod.GET)
	// 접근제어자  반환타입  메서드명(매개변수, 매개변수)
	public String exam(ExamVO ev, Model model) { // int는 정수만 저장 model은 모델 클래스 타입 참조형 타입
		System.out.println(ev);
		model.addAttribute("model_a", ev);
		return "exam"; //forward(web
		
		
	}
	
	
}
