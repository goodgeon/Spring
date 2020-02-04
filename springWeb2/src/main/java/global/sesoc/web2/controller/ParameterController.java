package global.sesoc.web2.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.web2.HomeController;
import global.sesoc.web2.vo.Person;


@Controller
public class ParameterController {
	
	private static final Logger logger = LoggerFactory.getLogger(ParameterController.class);
	
	@RequestMapping(value = "/param1", method = RequestMethod.GET)
	public String jspTest1() {
		return "param1Form";
	}
	
	@RequestMapping(value = "/param1", method = RequestMethod.POST)
	public String jspTest2(String name, int age, String address) {
		
//		System.out.println("이름 : " + person.getName());
//		System.out.println("나이 : " + person.getAge());
//		System.out.println("주소 : " + person.getAddress());
		logger.debug("이름 : " + name);
		logger.error("이름 : " + name);
		logger.info("이름 : " + name);
		
		return "param1Form";
	}
	
	@RequestMapping(value = "/param2", method = RequestMethod.GET)
	public String jspTest3() {
		return "param2Form";
	}
	
	@RequestMapping(value = "/param2", method = RequestMethod.POST)
	public String jspTest4(Person p ) { //setter
		logger.debug("전달된 VO : " + p);
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/param3", method = RequestMethod.GET)
	public String jspTest5(String num, String num2) {
		logger.debug("num: "+num);
		logger.debug("num2: "+num2);
		return "redirect:/";
	}

}
