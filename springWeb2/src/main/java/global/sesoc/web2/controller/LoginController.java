package global.sesoc.web2.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	//로그인 폼으로 이동
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm() {
		return "loginForm";
	}
	
	//사용자가 입력한 ID, 비번 확인하여 세션에 저장
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(String id, String password, HttpSession session) {
		logger.debug("id: {}, password : {}", id, password);
		
		//ID가 "abc"이고 비밀번호가 "123"이면 로그인
		//세션에 아이디인 "abc"를 "loginId"라는 이름으로 저장한다
		if(id.equals("abc") && password.equals("123")) {
			session.setAttribute("loginId", id);
		}
		//메인화면으로 이동한다
		
		return "redirect:/";
	}
	
	//로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		//1.
		session.removeAttribute("loginId");
		
		//2.
		//session.invalidate();
		return "redirect:/";
	}

}