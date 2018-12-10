<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<link type="text/css" rel="stylesheet" href="${basepath}/jsp/css/page_base.css"/>
	<link type="text/css" rel="stylesheet" href="${basepath}/jsp/css/stuInfoPro.css"/>
	<script type="text/javascript" src="<%=basepath %>/jsp/js/jquery-1.8.3.js"></script>
	<!--  <script type="text/javascript" src="<%=basepath %>/jsp/js/StudentInfoProtect.js"></script>-->
	<script type="text/javascript" src="<%=basepath %>/jsp/js/StudentInfoUpdate.js"></script>
	
	<title>学生信息维护</title>
</head>
<body>
	<input type="hidden" name="basePath" value="${basepath}"/>
	<div id="header_bar">学&nbsp;生&nbsp;信&nbsp;息&nbsp;维&nbsp;护</div>
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
		<form id="findStudent" action="${basepath}/student/findStudent" method="post">
		<div id="content_right">
			<div id="stuInfo">
				<span id="span_yuanxi">院系：
					<select class="select_student" id="yuanxi" name="subject">
						<option value="">请选择------</option>
						<option value="计算机科学与技术学院">计算机科学与技术学院</option>
						<option value="生科学院">生科学院</option>
						<option value="数统学院">数统学院</option>
						<option value="音乐学院">音乐学院</option>
					</select>
				</span>
				<span>班级：
					<select class="select_student" id="banji" name="stuClass">
						<option value="">请选择---</option>
						<option value="1601班">1601班</option>
						<option value="1602班">1602班</option>
						<option value="1603班">1603班</option>
						<option value="1604班">1604班</option>
						<option value="1605班">1605班</option>
						<option value="1606班">1606班</option>
						<option value="1607班">1607班</option>
						<option value="1608班">1608班</option>
					</select>
				</span>
				
				<button id="search_button1" type="submit">搜&nbsp;索</button>
				<span id="search_button"><a href="${basepath}/jsp/student/StudentInfoAdd.jsp">添&nbsp;加</a></span>
			</form>
			</div>
			<div id="stuInfoTable">
				<table id="stuTableContent">
					<tr id="tr_head">
						<td class="col1" id="xuehao">学&nbsp;号</td>
						<td class="col2" id="stuName">姓&nbsp;名</td>
						<td class="col3" id="stuSex">性&nbsp;别</td>
						<td class="col4" id="stuOption">操&nbsp;作</td>
					</tr>
					
					<c:forEach items="${stus}" var="stu"><!--  -->
								<tr>
										<td class="col1" id="xuehao">${stu.studentNo} </td>
										<td class="col2" id="stuName">${stu.studentName}</td>
										<td class="col3" id="stuSex">${stu.sex}</td>
										<td class="col4" id="stuOption">
											<a href="${basepath}/student/getStuById?id=${stu.id}" class="option" >修改</a>&nbsp;|&nbsp;
											<a class="option" href="${basepath}/student/deleteStu?id=${stu.id}">删除</a>
										</td>
									</tr>
					</c:forEach>
					
				</table>
			</div>
		</div>
		<div style="clear:both;"></div>
	</div>
</body>
</html>