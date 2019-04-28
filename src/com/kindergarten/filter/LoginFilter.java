package com.kindergarten.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter(filterName="LoginFilter",urlPatterns={"*.action"})
public class LoginFilter implements Filter {

	@Override
	public void destroy() {		
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest)servletRequest;
		HttpServletResponse response = (HttpServletResponse)servletResponse;
		
		HttpSession session = request.getSession();
		String url = request.getRequestURI();
		if (session.getAttribute("userLogin") != null||session.getAttribute("adminLogin") != null ||session.getAttribute("teacherLogin") != null || url.indexOf("/User/LoginUser.action")>0|| url.indexOf("/Teacher/LoginTeacher.action")>0|| url.indexOf("/Admin/LoginAdmin.action")>0) {
			filterChain.doFilter(request, response);
		} else {
			//没有登录
			/*response.sendRedirect(request.getContextPath()+"/User/LoginUser.jsp");*/
			request.getRequestDispatcher("/User/UserLogin.jsp").forward(request, response);
		}
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {		
	}

}
