package global.sesoc.web5.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.web5.dao.DAO;
import global.sesoc.web5.paging.Paging;
import global.sesoc.web5.vo.Board;

@Controller
@RequestMapping(value = "/board")
public class BoardController {
	@Autowired
	DAO dao;
	
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String boardForm(Model model, int currentPage) {
		Paging paging = new Paging();
		
		paging.setCurrentPage(currentPage);
		paging.setPageSize(10);
		paging.setParams();
		
		ArrayList<Board> list = dao.getList(currentPage,paging);
		
		model.addAttribute("paging",paging);
		model.addAttribute("list",list);
		
		return "/board/boardForm";
	}

}
