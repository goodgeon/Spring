package global.sesoc.web2.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CookieController {
	private static final Logger logger = LoggerFactory.getLogger(CookieController.class);
	
	@RequestMapping(value = "/cookie1", method = RequestMethod.GET)
	public String cookie1(HttpServletResponse res) {
		//1. 쿠키 객체 생성
		Cookie c1 = new Cookie("name","abc");
		Cookie c2 = new Cookie("age","12");
		
		//2. 시간을 지정
		c1.setMaxAge(60*60*24*3);
		
		//3. response객체를 통해 내보내기
		res.addCookie(c1);
		res.addCookie(c2);
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/cookie2", method = RequestMethod.GET)
	public String cookie2(HttpServletResponse res) {
		//1. 같은 이름의 쿠키 생성
		Cookie c1 = new Cookie("name","");
		Cookie c2 = new Cookie("age","");
		//2. 시간을 0초로 지정
		c1.setMaxAge(0);
		c2.setMaxAge(0);
		//3. response객체를 통해 내보내기
		res.addCookie(c1);
		res.addCookie(c2);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/cookie3", method = RequestMethod.GET)
	public String cookie3(HttpServletRequest req) {
		Cookie cks[] = req.getCookies();
		
		for(int i=0; i<cks.length; i++) {
			logger.debug(cks[i].getName()+","+cks[i].getValue());
		}
		
		for(Cookie c : cks) {
			logger.info(c.getName() + "," + c.getValue());
		}
		return "redirect:/";
	}
	
	@RequestMapping(value = "/cookie4", method = RequestMethod.GET)
	public String cookie4(
			@CookieValue(value = "name", defaultValue = "없음")String name,
			@CookieValue(value = "age", defaultValue = "0") int age) {
		
		logger.info("name : {}, age : {}",name,age);
		logger.info("name : "+name+"age : " + age);
		

		return "redirect:/";
	}

}