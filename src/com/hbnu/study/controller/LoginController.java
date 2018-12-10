package com.hbnu.study.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hbnu.study.bean.LoginDto;
import com.hbnu.study.bean.Student;
import com.hbnu.study.service.LoginService;
import com.hbnu.study.service.impl.LoginServiceImpl;

@Controller
public class LoginController {

	private LoginService loginService=new LoginServiceImpl();	
	
	/**
	 * ��¼��ѯ������ѧ��ʵ�����session
	 * @param loginDto
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String login(LoginDto loginDto,HttpSession session){
		
		Student returnStu=loginService.login(loginDto);
		//1�����Ñ����ܴa���_
		if(null!=returnStu)
		{
			session.setAttribute("student", returnStu);
			return "MainPage";
		}
		else
			return "LoginFaild";
	}
	
}
