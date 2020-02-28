package global.sesoc.test.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/js")
public class JavaScriptController {

	@RequestMapping(value = "/js1", method = RequestMethod.GET)
	public String js1() {
		
		
		return "js1";
	}
	
	@RequestMapping(value = "/js2", method = RequestMethod.GET)
	public String js2() {
		
		
		return "js2";
	}
}
