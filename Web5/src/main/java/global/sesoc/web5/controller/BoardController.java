package global.sesoc.web5.controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import global.sesoc.web5.HomeController;
import global.sesoc.web5.dao.DAO;
import global.sesoc.web5.paging.Paging;
import global.sesoc.web5.util.FileService;
import global.sesoc.web5.vo.Board;
import global.sesoc.web5.vo.Member;
import global.sesoc.web5.vo.Reply;

@Controller
@RequestMapping(value = "/board")
public class BoardController {
	@Autowired
	DAO dao;
	
	final String uploadPath = "/boardfile";
	
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String boardForm(Model model, int currentPage) {
		int entireSize = dao.getEntireSize();
		
		Paging paging = new Paging();
		
		paging.setCurrentPage(currentPage);
		paging.setEntireSize(entireSize);
		paging.setParams();
		
		ArrayList<Board> list = dao.getList(currentPage,paging);
		
		model.addAttribute("paging",paging);
		model.addAttribute("list",list);
		model.addAttribute("entireSize",entireSize);
		
		return "/board/boardForm";
	}
	
	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String writeForm() {
		return "/board/writeForm";
	}
	
	@RequestMapping(value = "write", method = RequestMethod.POST)
	public String write(Board board, HttpSession session, MultipartFile upload) {
		Member m = (Member)session.getAttribute("member");
		board.setId(m.getId());
		
		//첨부파일이 있는 경우 지정된 경로에 저장하고, 원본파일명과 저장된 파일명을 vo객체에 세팅
		if( upload != null) {
			String savedFile = FileService.saveFile(upload, uploadPath);
			board.setOriginalFile(upload.getOriginalFilename());
			board.setSavedFile(savedFile);
		}
		
		dao.write(board);
		return "redirect:/board/list?currentPage=1";
	}
	
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public String read(int boardNum, Model model) {
		dao.updateHits(boardNum);
		Board board = dao.getBoard(boardNum);
		ArrayList<Reply> repList = dao.getReplyList(boardNum);
		
		model.addAttribute("repList",repList);
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
	
	// REPLY //
	@RequestMapping(value = "/reply", method = RequestMethod.POST)
	public String reply(HttpSession session, String text, int boardNum) {
		Member m = (Member)session.getAttribute("member");
		Reply reply = new Reply();
		
		reply.setBoardNum(boardNum);
		reply.setId(m.getId());
		reply.setText(text);
		dao.insertReply(reply);
		
		return "redirect:/board/read?boardNum="+boardNum;
	}
	
	@RequestMapping(value = "/download", method = RequestMethod.GET)
	public String download(int boardNum, HttpServletResponse response) {
		Board board = dao.getBoard(boardNum);
		String originalFile = board.getOriginalFile();
		
		try {
			response.setHeader("Content-Disposition", " attachment;filename="+ URLEncoder.encode(originalFile, "UTF-8"));
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		
		String savedFile = board.getSavedFile();
		
		String fullpath = uploadPath + "/" + savedFile;
		
		FileInputStream filein = null;
		ServletOutputStream fileout = null;
		
		try {
			filein = new FileInputStream(fullpath);
			fileout = response.getOutputStream();
			
			FileCopyUtils.copy(filein, fileout);
			
			filein.close();
			fileout.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return null;
	}
	

}
