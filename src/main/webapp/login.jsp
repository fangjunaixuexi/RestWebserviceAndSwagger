<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="${pageContext.request.contextPath }/css/shop.css" type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/css/skin.css" rel="stylesheet" id="skin" />
<link href="${pageContext.request.contextPath }/css/Sellerber.css" type="text/css"  rel="stylesheet" />
<link href="${pageContext.request.contextPath }/css/bkg_ui.css" type="text/css"  rel="stylesheet" />
<link href="${pageContext.request.contextPath }/css/font-awesome.min.css"  rel="stylesheet" />
<title>用户登录</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/messages_zh.js"></script>
	<style  type="text/css">
.login-area {
	width: 100%;
	height: 200px;
	margin: 0 auto;
}

.login-area form {
	width: 290px;
	margin: 0 auto;
}

.login-area label {
	clear: left;

	margin-top: 20px;
	width: 60px;
	font: 600 14px 宋体;
}

.login-area  input {
	width: 122px;
	height: 25px;
	margin-top: 11px;
	border: 1px #767F94 solid;
	font: 12px/16px 宋体;
}
	</style>
</head>

<body class="login-layout Reg_log_style">

<div class="logintop">    
    <span>欢迎来到学生管理平台</span>    
    <ul>
    <li><a href="#">返回首页</a></li>
    <li><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    </ul>    
    </div>
    <div class="loginbody">
<div class="login-container">
	<div class="center"> <label style="font-size: 35px">学生信息管理系统</label></div>
							<div class="space-6"></div>
							<div class="position-relative">
								<div id="login-box" class="login-box widget-box no-border visible">				
                                  <div class="login-main">
                                  <div class="clearfix">
                                  <div class="login_icon"><img src="${pageContext.request.contextPath }/images/login_img.png" /></div>
									<div class="login-area">
									<form id="userForm" style=" width:300px; float:right; margin-right:50px;">
                                    <h4 class="title_name"><img src="${pageContext.request.contextPath }/images/login_title.png" /></h4>
										<fieldset>
										
			<label> 用&nbsp;&nbsp;户： </label> <input type="text" name="user_name" />
			<br>
			<label> 密&nbsp;&nbsp;码： </label> <input type="password"
				name="password" />
			<br /> <b><font color="red" id="message"></font></b>
			
		</form>
    <div class="space"></div>
                         	<br />
                                  <button type="submit" class="login_btn" > 登&nbsp;陆 </button>
                       
									
                              <div class="space-4"></div>
                          </fieldset>
                          
                      </form>
							</div>
</div>
                     
          </div>
      </div>
  </div>
 </div>
                        <div class="loginbm">版权所有  <a href=""></a> </div><strong></strong>
</body>
<script type="text/javascript">
	$(function() {
		$("#userForm").validate({
							rules : {
								user_name : "required",
								user_password : {required : true,minlength : 5}},
							messages : {
								user_name : "用户不能为空",
								password : {required : "请输入密码",minlength : "密码长度不能小于 5 个字母"
								}
							},
							submitHandler : function() {
								//提交Ajax
								 $.ajax({
											data : $("#userForm").serialize(),
											dataType : "text",
											type : "post",
											url : "http://localhost:8080/test/user/login",
											success : function(rec) {
												if(rec=="1"){
													$("#message").html("用户名或密码错误");
												}else{
													location.href = "http://localhost:8080/test/index.jsp"
												}	
											}
										}); 
							}
						});
	})
</script>
</html>
