package global.sesoc.test.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.test.vo.PersonVO;

@Controller
@RequestMapping("ajax")
public class AjaxController {
	
	private static final Logger logger = LoggerFactory.getLogger(AjaxController.class);
	
	@RequestMapping(value="aj1", method = RequestMethod.GET)
	public String aj1() {
		
		return "aj1";
	}
	
	@ResponseBody
	@RequestMapping(value="ajaxtest1", method = RequestMethod.GET)
	public String test1() {
		logger.info("ajaxtest1 왔다감");
		return "aj1";
	}
	
	@ResponseBody
	@RequestMapping(value="ajaxtest2", method = RequestMethod.POST)
	public String test2(String str1, String str2) {
		logger.info("전달된 값 : {}, {}", str1,str2);
		return "abcdef";
	}
	
	@RequestMapping(value = "aj2", method = RequestMethod.GET)
	public String aj2() {
		
		return "aj2";
	}
	
	@ResponseBody
	@RequestMapping(value = "insert1", method = RequestMethod.POST)
	public void test22(String name, String age,String phone){
		logger.info("전달된 값 : {}, {}, {}", name, age, phone);
		return;
	}
	
	@ResponseBody
	@RequestMapping(value = "insert2", method = RequestMethod.POST)
	public void test4(PersonVO vo){
		logger.info("전달된 값 : {}", vo.toString());
		return;
	}
	
	@ResponseBody
	@RequestMapping(value = "jsontest", method = RequestMethod.GET)
	public PersonVO test4(){
		PersonVO vo = new PersonVO();
		vo.setName("홍길동");
		vo.setAge(100);
		vo.setPhone("010-111-1111");
		return vo;
	}
	
	@ResponseBody
	@RequestMapping(value = "jsontest2", method = RequestMethod.GET)
	public ArrayList<PersonVO> test33(){
		ArrayList<PersonVO> list = new ArrayList<>();
		
		PersonVO vo = new PersonVO();
		vo.setName("홍길동");
		vo.setAge(100);
		vo.setPhone("010-111-1111");
		list.add(vo);
		vo = new PersonVO();
		vo.setName("김철수");
		vo.setAge(22);
		vo.setPhone("010-222-2222");
		list.add(vo);
		
		return list;
	}
	
	
}
