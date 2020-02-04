package global.sesoc.web1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ParamController {
	
	
	@RequestMapping(value = "/param1", method = RequestMethod.GET)
	public String param1() {
		return "jsp/param1";
	}
	
	@RequestMapping(value = "/param2", method = RequestMethod.POST)
	public String param2(String id, String pw, String name, String mail, String phone, String gender, int year,
			int month, int day, String ip) {
		System.out.println("id: " + id);
		System.out.println("password: " + pw);
		System.out.println("name : " + name);
		System.out.println("mail : " + mail);
		System.out.println("phone : " +phone);
		System.out.println("gender : " +gender);
		System.out.println("year : " + year);
		System.out.println("month : " + month);
		System.out.println("day : " + day);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/param3", method = RequestMethod.GET)
	public String param3(Model m) {
		String str = "서버에서 보내는내용";
		int num = 12345;
		
		m.addAttribute("str", str);
		m.addAttribute("num", num);

		return "jsp/param3";
	}
	

}
