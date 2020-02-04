package global.sesoc.web4.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.web4.HomeController;
import global.sesoc.web4.dao.DAO;
import global.sesoc.web4.vo.Guestbook;

@Controller
public class GuestbookController {
	
	private static final Logger logger = LoggerFactory.getLogger(GuestbookController.class);
	
	@Autowired
	DAO dao;
	
	@RequestMapping(value = "/guestbook", method = RequestMethod.GET)
	public String guestbook(Model model) {
		ArrayList<Guestbook> list = null;
		list = dao.getList();
		
		model.addAttribute("list", list);
		return "list";
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String goWrite() {
		
		return "write";
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String saveGuestbook(Guestbook guestbook) {
		guestbook.setContents(guestbook.getContents().replace("\n", "<br>"));
		dao.insertGuestbook(guestbook);
		
		return "redirect:/guestbook";
	}
	
	/*
	 * @RequestMapping(value = "/checkPw", method = RequestMethod.GET) public String
	 * checkPw(int num, String inputPw) { dao.checkPw(num,inputPw);
	 * 
	 * return "redirect:/guestbook"; }
	 * 
	 * @RequestMapping(value = "/deleteGuestbook", method = RequestMethod.GET)
	 * public String deleteGuestbook(int num) { dao.deleteGuestbook(num); return
	 * "redirect:/guestbook"; }
	 */
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(Guestbook guestbook) {
		dao.delete(guestbook);
		
		
		return "redirect:/guestbook";
	}

}
