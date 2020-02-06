package global.sesoc.web5.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.web5.dao.DAO;
import global.sesoc.web5.paging.Paging;
import global.sesoc.web5.vo.Board;
import global.sesoc.web5.vo.Member;

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
	
	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String writeForm() {
		return "/board/writeForm";
	}
	
	@RequestMapping(value = "write", method = RequestMethod.POST)
	public String write(Board board, HttpSession session) {
		Member m = (Member)session.getAttribute("member");
		board.setId(m.getId());
		
		dao.write(board);
		
		
		return "redirect:/board/list?currentPage=1";
	}
	
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public String read(int boardNum, Model model) {
		dao.updateHits(boardNum);
		Board board = dao.getBoard(boardNum);
		
		model.addAttribute("board",board);
		
		return "/board/readForm";
	}
	
	@RequestMapping(value = "/updateBoard", method = RequestMethod.GET)
	public String updateForm(int boardNum, Model model) {
		Board board = dao.getBoard(boardNum);
		
		model.addAttribute(board);
		
		return "/board/updateForm";
	}
	
	@RequestMapping(value = "/updateBoard", method = RequestMethod.POST)
	public String update(Board board,int boardNum) {
		board.setBoardNum(boardNum);
		dao.updateBoard(board);
		
		return "redirect:/board/list?currentPage=1";
	}
	
	@RequestMapping(value = "/deleteBoard", method = RequestMethod.GET)
	public String delete(int boardNum) {
		dao.deleteBoard(boardNum);
		
		return "redirect:/board/list?currentPage=1";
	}
	

}
