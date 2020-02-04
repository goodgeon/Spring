package global.sesoc.web3.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.web3.HomeController;
import global.sesoc.web3.dao.DAO;
import global.sesoc.web3.vo.Person;

@Controller
public class InputController {
	
	private static final Logger logger = LoggerFactory.getLogger(InputController.class);
	
	@Autowired
	DAO dao;
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join1() {
		
		return "joinForm";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join2(String name, int age, String address) {
		Person person = new Person(name,age,address);
		
		dao.insertPerson(person);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/info",method = RequestMethod.GET)
	public String info(String name, Model model) {
		logger.debug("전달된 이름 : {}",name);
		Person p = dao.selectOne(name);
		model.addAttribute("person",p);
		return "infoView";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {
		ArrayList<Person> list = dao.getList();
		model.addAttribute("list",list);
		return "listView";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(String name) {
		dao.deletePerson(name);
		return "redirect:/list";
	}

}
