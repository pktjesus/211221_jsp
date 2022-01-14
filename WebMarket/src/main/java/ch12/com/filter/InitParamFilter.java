package ch12.com.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class InitParamFilter implements Filter {
	private FilterConfig filterConfig = null;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Filter02 초기화");
		this.filterConfig = filterConfig;
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
			throws IOException, ServletException {
		System.out.println("Filter02 수행...");
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String requestId = request.getParameter("id");	// 아이디 텍스트박스에 입력한 값
		String requestPasswd = request.getParameter("passwd"); // 패스워드 텍스트박스에 입력한 값
		
		String filterParam1 = filterConfig.getInitParameter("param1");	// admin
		String filterParam2 = filterConfig.getInitParameter("param2");	// 1234
	
		String message;
		if(requestId.equals(filterParam1) && requestPasswd.equals(filterParam2))
			message = "로그인 성공했습니다.";
		else
			message = "로그인 실패했습니다.";
		
		PrintWriter writer = response.getWriter();
		writer.println(message);
		
		filterChain.doFilter(request, response);
	}
	
	@Override
	public void destroy() {
		System.out.println("Filter02 해제...");
	}

}
