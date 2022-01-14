package ch12.com.filter;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class LogFileFilter implements Filter {
	private PrintWriter writer;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("LogFileFilter 초기화");
		
		// 파일 생성하는 코드
		String fileName = "C://upload//monitor.log";
		try {
			writer = new PrintWriter(new FileWriter(fileName, true), true);
		} catch(IOException e) {
			throw new ServletException("로그 파일을 열 수 없습니다.");
		}
	}
	
	private String getCurrentTime() {
		DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(System.currentTimeMillis());
		return formatter.format(calendar.getTime());
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		writer.printf("현재일시: %s %n", getCurrentTime());
		writer.printf("클라이언트 주소 : %s %n", request.getRemoteAddr());
		
		filterChain.doFilter(request, response);
	}
	
	@Override
	public void destroy() {
		writer.close();
	}

}
