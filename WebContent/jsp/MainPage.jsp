<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<link type="text/css" rel="stylesheet" href="${basepath}/jsp/css/style.css"/>
	<script type="text/javascript" src="<%=basepath %>/jsp/js/jquery-1.8.3.js"></script>
	<!--  <script type="text/javascript" src="<%=basepath %>/jsp/js/MainPage.js"></script>-->
	<title>学生信息添加</title>
</head>
<body>


	<div id="header_bar">信&nbsp;息&nbsp;维&nbsp;护</div>
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
		<div style="clear:both;"></div>
	</div>
</body>
</html>