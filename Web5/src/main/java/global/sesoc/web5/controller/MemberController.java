package global.sesoc.web5.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.web5.dao.DAO;
import global.sesoc.web5.vo.Member;

@Controller
public class MemberController {
	
	@Autowired
	DAO dao;
	
	@RequestMapping(value = "/member/join", method = RequestMethod.GET)
	public String joinForm() {
		
		return "/customer/joinForm";
	}
	
	@RequestMapping(value = "/member/join", method = RequestMethod.POST)
	public String join(Member m) {
		dao.join(m);
		return "redirect:/";
	}
		
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm() {
		
		return "/customer/loginForm";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Member member, HttpSession session) {
		Member m = dao.login(member);
		
		if(m != null)
			session.setAttribute("member", m);
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("member");
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "member/updateMemberInfo", method = RequestMethod.GET)
	public String updateForm() {
		
		return "/customer/updateForm";
	}
	
	@RequestMapping(value = "member/updateMemberInfo", method = RequestMethod.POST)
	public String update(Member member, HttpSession session) {
		dao.updateMemberInfo(member);
		
		return "redirect:/";
	}

}
