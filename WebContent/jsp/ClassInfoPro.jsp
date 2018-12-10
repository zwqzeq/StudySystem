<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<link type="text/css" rel="stylesheet" href="<%=basepath %>/jsp/css/page_base.css"/>
	<link type="text/css" rel="stylesheet" href="<%=basepath %>/jsp/css/stuInfoPro.css"/>
	<link type="text/css" rel="stylesheet" href="<%=basepath %>/jsp/css/classAdd.css"/>
	
	<title>课程信息维护</title>
</head>
<body>
	<div id="header_bar">课&nbsp;程&nbsp;信&nbsp;息&nbsp;维&nbsp;护</div>
	<div id="content">
		<div id="content_left">
			<div class="block_link" style="background:rgba(0,191,255,0.2);border:2px dashed white;color:white;">
				
				<a class="a_link" href="${basepath}/student/getStudent" >学生信息维护</a>
			</div>
			<div class="block_link"><a class="a_link" href="#">教师信息维护</a></div>
			<div class="block_link"><a class="a_link" href="#">院系信息维护</a></div>
			<div class="block_link"><a class="a_link" href="#">班级信息维护</a></div>
			
			<div class="block_link"><a class="a_link" href="${basepath}/course/getCourse">课程信息维护</a></div>
			<div class="block_link"><a class="a_link" href="${basepath}/elective/getElective">选课信息维护</a></div>
		</div>
		<div id="content_right">
			<div id="stuInfo">
				<span id="class_add_button"><a href="<%=basepath %>/jsp/ClassInfoAdd.jsp">添&nbsp;加</a></span>
			</div>
			<div id="stuInfoTable">
				<table id="stuTableContent">
					<tr id="tr_head">
						<td class="class_col1">课程编号</td>
						<td class="class_col2">课程名称</td>
						<td class="class_col3">学分</td>
						<td class="class_col4">学时</td>
						<td class="class_col5">课程类别</td>
						<td class="class_col6">操作</td>
					</tr>
					
					<c:forEach items="${courses}" var="course"><!--  -->
					  <tr>
						<td class="class_col1" id="classId">${course.courseNo}</td>
						<td class="class_col2" id="className">${course.courseName}</td>
						<td class="class_col3" id="classGrade">${course.credit}</td>
						<td class="class_col4" id="classTime">${course.courseHour}</td>
						<td class="class_col5" id="classKinds">${course.courseType}</td>
						<td class="class_col6" id="classOption"><a href="${basepath}/course/getCourseById?id=${course.id}" class="option">修改</a>&nbsp;|&nbsp;
						<a class="option" href="${basepath}/course/delete?id=${course.id}">删除</a></td>
					 </tr>
					</c:forEach>
					
				</table>
			</div>
		</div>
		<div style="clear:both;"></div>
	</div>
</body>
</html>