package global.sesoc.web2.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.web2.vo.Person;

@Controller
public class JstlController {
	
	@RequestMapping(value = "/jstl1", method = RequestMethod.GET)
	public String jsts1(Model model) {
		String str = "문자열";
		int num = 100;
		ArrayList<String> slist = new ArrayList<>();
		slist.add("aaa");
		slist.add("bbb");
		slist.add("ccc");
		
		model.addAttribute("str", str);
		model.addAttribute("num", num);
		model.addAttribute("slist", slist);
		
		String tag = "<marquee>문자열</marquee>";
		model.addAttribute("tag", tag);
		
		return "jstl1";
	}
	
	@RequestMapping(value = "/jstl2", method = RequestMethod.GET)
	public String jsts12(Model model) {
		//이곳에 여러가지 자료형 선언, 값 대입, 객체 생성
		//jst12.jsp로 포워딩하여 그 값들모두 출력
		
		Person person = new Person();
		person.setName("홍길동");
		person.setAge(20);
		person.setAddress("서울");
		
		ArrayList<Person> list = new ArrayList<Person>();
		Person p = new Person();
		p.setName("김철수");
		p.setAge(30);
		p.setAddress("부산");
		list.add(p);
		p = new Person();
		p.setName("이철수");
		p.setAge(40);
		p.setAddress("광주");
		list.add(p);
		
		model.addAttribute("person",person);
		model.addAttribute("list",list);
		
		return "jstl2";
	}

}
