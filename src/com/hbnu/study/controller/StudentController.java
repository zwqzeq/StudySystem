package com.hbnu.study.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hbnu.study.bean.Student;
import com.hbnu.study.service.StudentService;
import com.hbnu.study.service.impl.StudentServiceImpl;
@Controller
@RequestMapping("/student")
public class StudentController {

	private StudentService stuService = new StudentServiceImpl();

	@RequestMapping("/add")
	public String addStudent(Student stu) {
		boolean result = stuService.addStudent(stu);
		if(result)		
			return "redirect:/student/getStudent";
		else
			return "MainPage";

	}
	
	@RequestMapping("/getStudent")
	public String getStudent(Model m) {
		List stus=stuService.getStudent();
		m.addAttribute("stus", stus);
		return "StudentInfoProtect";
	}
	
	@RequestMapping(value="/findStudent",method=RequestMethod.POST)
	public String findStudent(Model m,Student stu) {
		List stus=stuService.findStudent(stu);
		m.addAttribute("stus", stus);
		return "StudentInfoProtect";
	}
	
	@RequestMapping("/getStuById")
	public String getStuById(Model m,Student stu) {
		Student s=stuService.getStuById(stu.getId());
		m.addAttribute("stu", s);
		return "StudentInfoUpdate";
	}

	
	@RequestMapping(value="/updateStu",method=RequestMethod.POST)
	public String updateStu(Student stu) {
		if(stuService.updateStu(stu))
			return "redirect:/student/getStudent";
		else
			return "MainPage";
	}
	
	@RequestMapping(value="/deleteStu",method=RequestMethod.GET)
	public String deleteStu(Student stu) {
		if(stuService.deleteStu(stu))
			return "redirect:/student/getStudent";
		else
			return "MainPage";
	}
}
