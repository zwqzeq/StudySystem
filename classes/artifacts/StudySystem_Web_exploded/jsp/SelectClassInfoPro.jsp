<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<link type="text/css" rel="stylesheet" href="<%=basepath %>/jsp/css/page_base.css"/>
	<link type="text/css" rel="stylesheet" href="<%=basepath %>/jsp/css/stuInfoPro.css"/>
	<link type="text/css" rel="stylesheet" href="<%=basepath %>/jsp/css/instituteInfoAdd.css"/>
	<link type="text/css" rel="stylesheet" href="<%=basepath %>/jsp/css/selectClass.css"/>
	<title>选课信息维护</title>
</head>
<body>
	<div id="header_bar">选&nbsp;课&nbsp;信&nbsp;息&nbsp;维&nbsp;护</div>
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
			<div id="institude_head">
				<a id="selectClassAdd" href="${basepath}/elective/preAdd">添加</a>
			</div>
			<div>
				<table id="in_table_block">
					<tr id="in_head_tr">
						<td class="select_col1 select_top">学生所属院系</td>
						<td class="select_col2 select_top">所在班级</td>
						<td class="select_col3 select_top">课程名称</td>
						<td class="select_col4 select_top">任课教师</td>
						<td class="select_col5 select_top">操作</td>
					</tr>
					
					<c:forEach items="${electives}" var="elective"><!--  -->
						<tr class="in_tr">
							<td class="select_col1">${elective.subjectName }</td>
							<td class="select_col2">${elective.className }</td>
							<td class="select_col3">${elective.courseName }</td>
							<td class="select_col4">${elective.teacherName }</td>
							<td class="select_col5"><span class="in_del"><a class="option" href="${basepath}/elective/delete?id=${elective.id}">删除</a></span></td>
						</tr>
					</c:forEach>
					
					
					
				</table>
			</div>
		</div>
		
	</div>
</body>
</html>