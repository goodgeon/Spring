package global.sesoc.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/jq")
public class JQueryController {

	@RequestMapping(value = "/jq1", method = RequestMethod.GET)
	public String jq1() {
		
		
		return "jq1";
	}
	
	@RequestMapping(value = "/jq2", method = RequestMethod.GET)
	public String jq2() {
		
		
		return "jq2";
	}
	
	@RequestMapping(value = "/jq3", method = RequestMethod.GET)
	public String jq3() {
		
		
		return "jq3";
	}
}
