package com.hbnu.study.service;

import com.hbnu.study.bean.LoginDto;
import com.hbnu.study.bean.Student;

public interface LoginService {

	public Student login(LoginDto loginDto);
}
