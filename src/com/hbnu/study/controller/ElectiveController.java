package com.hbnu.study.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hbnu.study.bean.Course;
import com.hbnu.study.bean.Elective;
import com.hbnu.study.bean.Student;
import com.hbnu.study.service.CourseService;
import com.hbnu.study.service.ElectiveService;
import com.hbnu.study.service.impl.CourseServiceImpl;
import com.hbnu.study.service.impl.ElectiveServiceImpl;

@RequestMapping("/elective")
@Controller
public class ElectiveController {

	private ElectiveService eleService=new ElectiveServiceImpl();
	private CourseService courseService=new CourseServiceImpl();
	/**
	 * ��ȡ���пγ���Ϣ
	 * @param m
	 * @return
	 */
	@RequestMapping("/getElective")
	public String getElective(Model m,HttpSession session) {
		//��SESSION��ȡ����¼�ɹ�ʱ�Ž�ȥ��student����
		Student stu=(Student)session.getAttribute("student");
		List<Elective> electives=eleService.getElectives(stu);
		m.addAttribute("electives", electives);
		return "SelectClassInfoPro";
	}
	
	
	@RequestMapping("/preAdd")
	public String toAddElective(HttpSession session,Model m) {
		
		Student stu=null;
		//��session��ȡ����¼��ѧ����Ϣ
		if(null!=session.getAttribute("student"))
		{
			stu=(Student)session.getAttribute("student");
		}
		//����ȫ���γ���Ϣ,ѧ��������ѡ�ε�ҳ���Ͽ��Բ鿴
		List<Course> courses=courseService.getCourse();
		if(null!=stu)	
		{
			m.addAttribute("stu", stu);
			m.addAttribute("courses", courses);
			return "SelectClassInfoAdd";
		}else
			return "MainPage";
	}
	
	
	@RequestMapping("/add")
	public String addElective(Elective elective) {
		boolean result = eleService.addElective(elective);
		if(result)		
			return "redirect:/elective/getElective";
		else
			return "MainPage";
	}
	

	
	
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String deleteElective(Elective elective) {
		if(eleService.deleteElective(elective))
			return "redirect:/elective/getElective";
		else
			return "MainPage";
	}
}
