package global.sesoc.web5.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import global.sesoc.web5.vo.Member;

/**
 * 사용자 로그인 확인 인터셉터. HandlerInterceptorAdapter를 상속받아서 정의.
 */
public class LoginInterceptor extends HandlerInterceptorAdapter {
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

	//콘트롤러의 메서드 실행 전에 처리
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		logger.debug("LoginInterceptor 실행");
		
		//세션의 로그인 정보 읽기
		HttpSession session = request.getSession();
		Member m = (Member) session.getAttribute("member");
		//로그인되지 않은 경우 로그인 페이지로 이동
		if (m == null) {
			//request.getContextPath()로 루트 경로를 구하여 절대 경로로 처리
			System.out.println("session1 : "+session.getAttribute("write"));
			response.sendRedirect(request.getContextPath() + "/member/login");
			System.out.println("session2 : "+session.getAttribute("write"));
			return true;
		}
		//로그인 된 경우 요청한 경로로 진행
		return super.preHandle(request, response, handler);
	}

}
