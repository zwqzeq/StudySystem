<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<link type="text/css" rel="stylesheet" href="<%=basepath %>/jsp/css/page_base.css"/>
	<link type="text/css" rel="stylesheet" href="<%=basepath %>/jsp/css/stuInfoPro.css"/>
	<link type="text/css" rel="stylesheet" href="<%=basepath %>/jsp/css/stuInfoAddUp.css"/>
	<title>课程信息添加</title>
</head>
<body>
	<div id="header_bar">课&nbsp;程&nbsp;信&nbsp;息&nbsp;添&nbsp;加</div>
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
			<form id="addForm" method="post" action="${basepath}/course/add">
				<div id="addAllRows">
					<div class="addRow">
						<span class="addSpan">课程编号：</span>
						<input class="addInput2" id="classId_add" type="text" name="courseNo"/>
					</div>
					<div class="addRow">
						<span class="addSpan">课程名称：</span>
						<input class="addInput2" id="className_add" type="text" name="courseName"/>
					</div>
					<div class="addRow">
						<span class="addSpan">学&nbsp;&nbsp;&nbsp;&nbsp;分：</span>
						<input class="addInput2" id="classGrade_add" type="text" name="credit"/>
					</div>
					<div class="addRow">
						<span class="addSpan">学&nbsp;&nbsp;&nbsp;&nbsp;时：</span>
						<input class="addInput2" id="classTime_add" type="text" name="courseHour"/>
					</div>
					<div class="addRow">
						<span class="addSpan">课&nbsp;程&nbsp;类&nbsp;别：</span>
						<select class="addInput1" id="classKinds_add" name="courseType">
							
							<option value="专业选修">专业选修</option>
							<option value="专业必修">专业必修</option>
							<option value="公选">公选</option>
						</select>
					</div>
					<div id="infoAddButton">
						<span ><input id="right_button" class="add_button" style="line-height:10px;background:rgba(255,140,0,0.2); height:30px;font-size: 14px;" type="submit" value="添&nbsp;加"></span>
						<span ><input id="right_button" class="add_button" style="line-height:10px;background:rgba(255,140,0,0.2); height:30px;font-size: 14px;" type="button" value="重&nbsp;置"></span>
					</div>
				</div>
			</form>
		</div>
		<div style="clear:both;"></div>
	</div>
</body>
</html>