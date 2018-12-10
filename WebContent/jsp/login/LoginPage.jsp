<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>成绩管理系统</title>
	<link rel="stylesheet" href="${basepath}/jsp/css/style.css">
	<script type="text/javascript" src="<%=basepath %>/jsp/js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
	
	
	/**function doLogin(){
		
		var userName=$("[name='userName']").val();
		var password=$("[name='password']").val();
		var basePath=$("[name='basePath']").val();
		if(userName.length==0 || password.length==0)
		{
			alert("用户名或密码不能为空!!!");
			return false;
		}
		var type=$('input:radio[name="type"]:checked').val();
		if(type==null){
	        alert("请选择角色!!");
	        return false;
	    }
		
		$.ajax({
			url: basePath+'/login',
			data: {
				'userName': userName,
				'password': password,
				'type': type,
				},			 
		})
		.success(function(data) {
			
			if(data==0)
			{
				alert("用户名或密码错误");
			}else{
				location.href=basePath+"/jsp/MainPage.jsp"
			}
			
		});
	}*/
	</script>
</head>
<body>
<input type="hidden" name="basePath" value="${basepath}"/>
	<div class="login">
		<h1>成绩管理系统</h1>
		<div class="onee">
		<div class="one">
			<form action="${basepath}/login" method="post">
				<p><span>用户名 </span><input name=userName type="text"><label id="number">(学号或教工号)</label></p>
				<p><span>密&nbsp;&nbsp;码 </span><input name="password" type="password"></p>
				
   				<!-- <span id="discode"></span>
				<div class="radios">
					<input name="type" type="radio" value="0">学生
                	<input name="type" type="radio" value="1">教师
                	<input name="type" type="radio" value="2">管理员
                </div> -->
                <div class="radios">
        			<input name="login" type="submit" value="登陆" style="width: 60px;height: 30px;font-size: 18px;" align="center">
        			<input name="reset" type="button" value="重置" style="width: 60px;height: 30px;font-size: 18px;" align="center">
        		</div>
			</form>
		</div>
		</div>
	</div>
</body>
</html>