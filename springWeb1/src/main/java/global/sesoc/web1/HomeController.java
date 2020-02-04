package global.sesoc.web1;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String goJoinForm() {
		return "joinForm";
	}
	
	
	
	@RequestMapping(value = "/join2", method = RequestMethod.POST)
	public String goJoinForm2(String id, String password, String name, String phone) {
		System.out.println("===== 사용자가 가입폼에서 입력한 값 =====");
		System.out.println("ID : " + id);
		System.out.println("비밀번호 : " + password);
		System.out.println("이름 : " + name);
		System.out.println("전화번호 : " + phone);
		return "redirect:/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String goLoginForm() {
		return "loginForm";
	}
	
	@RequestMapping(value = "/login2", method = RequestMethod.POST)
	public String login(String id, String password) {
		System.out.println("===== 사용자가 로그인폼에서 입력한 값 =====");
		System.out.println("ID : " + id);
		System.out.println("비밀번호 : " + password);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public String read() {
		
		return "read";
	}
	
	
}
