package com.hbnu.study.service.impl;

import com.hbnu.study.bean.LoginDto;
import com.hbnu.study.bean.Student;
import com.hbnu.study.bean.Teacher;
import com.hbnu.study.dao.StudentDao;
import com.hbnu.study.dao.TeacherDao;
import com.hbnu.study.service.LoginService;

public class LoginServiceImpl implements LoginService {

	private StudentDao stuDao=new StudentDao();
	
	@Override
	public Student login(LoginDto loginDto) {
	
		Student stu=new Student();
		stu.setStudentNo(loginDto.getUserName());
		stu.setPassword(loginDto.getPassword());
		return stuDao.selectForLogin(stu);
		
	}
	
	
}
