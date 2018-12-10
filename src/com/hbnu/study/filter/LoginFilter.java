package com.hbnu.study.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain) throws IOException, ServletException {
        // ��������������Ҫ�õ�request,response,session����
        HttpServletRequest servletRequest = (HttpServletRequest) request;
        HttpServletResponse servletResponse = (HttpServletResponse) response;
        HttpSession session = servletRequest.getSession();

        // ����û������URI
        String path = servletRequest.getRequestURI();
        
        // ��session��ȡѧ����Ϣ
        Object stu = session.getAttribute("student");
       
        // ��½ҳ���������
        //ͼƬ����ʽ���ܹ���
        if(path.indexOf("LoginPage.jsp") > 0 || path.indexOf("login") > 0||
        		   path.indexOf(".css") > 0||
        		   path.indexOf(".js")>0||
        		   path.indexOf(".jpg") > 0 || 
        		   path.indexOf(".bmp") > 0||
        		   path.indexOf(".gif") > 0||
        		   path.indexOf("authImg") > 0|| 
        		   path.indexOf(".png") > 0)
        {
            chain.doFilter(servletRequest, servletResponse);
            return;
        }

        // �ж����û��ȡ��ѧ����Ϣ,����ת����½ҳ��
        if (stu == null ) {
            // ��ת����½ҳ��
            servletResponse.sendRedirect("/StudySystem/jsp/LoginPage.jsp");
        } else {
            // �Ѿ���½,�����˴�����
            chain.doFilter(request, response);
        }

    }

    @Override
    public void destroy() {

    }

}
