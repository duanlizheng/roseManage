<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>花容月貌 登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <!-- css reset -->
    <link href="../css/reset-rose.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">

	<style>
		/*-----------------后台登录界面-----------------*/
		body {
		    background-color: #f9f9f9;
		    color: #666666;
		}
		.login-container {
			position: fixed;
			width: 100%;
			height: 100%;
		}
		.login-box {
			margin: 120px auto;
			width: 350px;
		}
		.login-box h3 {
			position: relative;
			margin-bottom: 30px;
			font-size: 23px;
			font-weight: 400;
			color: #444444;
			text-align: center;
		}
		.login-box .wrapper {
			padding: 40px 0;
			width: 100%;
			/*height: 300px;*/
			background: #f0f0f0;
			border: 1px solid #ccc;
		}
		.login-box .wrapper .item {
			/*text-align: center;*/
			margin: 0 0 0 50px;
		}
		.login-box .wrapper .item:not(:nth-of-type(4)) {
			margin-bottom: 20px;
		}
		.login-box .wrapper .item i {
			position: absolute;
			text-align: center;
			width: 35px;
			margin-top: 8px;
		}
		.login-box input:not([type="submit"]) {
			-webkit-box-sizing: border-box;
			-moz-box-sizing: border-box;
			box-sizing: border-box;
			padding-left: 30px;
			width: 250px;
			height: 30px;
			font-size: 12px;
			border: 1px solid #ddd;
		}
		#verify {
			width: 100px;
		}
		.login-box input[type="submit"] {
			width: 250px;
			height: 30px;
		}
		/* 按钮样式 */ 
		 .btn {
		 	display: inline-block;
		 	background-color: #0072C6;
		 	-moz-border-radius: 2px;
		 	-webkit-border-radius: 2px;
		 	border: 0;
		 	color: #FFF;
		 	padding: 6px 15px;
		 	font-size: 12px;
		 	font-weight: bold;
		 	text-transform: capitalize;
		 	cursor: pointer;
		 	-webkit-appearance: none;
		 }
		  .fa-leaf {
		  	position: absolute;
			top: 3px;
			left: 45px;
		  	color: #5FBF4A;
		  }

	</style>
  </head>
  <body>
  
    <div class="login-box">
    	<h3> <i class="fa fa-leaf"></i> &nbsp;花容月貌系统登录</h3>
    	<div class="wrapper">
    		<form action="">
    			<div class="item">
    				<label for="userName"><i class="fa fa-user fa-lg"></i></label> 
    				<input type="text" id="userName" name="userName" placeholder="请输入管理员账号"/>
    			</div>
    			<div class="item">
    				<label for="passWord"><i class="fa fa-lock fa-lg"></i></label> 
    				<input type="password" id="passWord" name="passWord" placeholder="请输入登录密码" />
    			</div>
    			<div class="item">
    				<label for="verify"><i class="fa fa-sort-alpha-asc fa-lg"></i></label> 
    				<input type="text" id="verify" name="verify" placeholder="验证码" />
    			</div>
    			<div class="item">
    				<input class="btn" type="submit" value="登 录" />
    			</div>
    		</form>
    	</div> <!-- wrapper -->
    </div> <!-- login-box -->

    <script src="../js/index.js"></script>
    <script type="text/javascript">
        
    </script>
  </body>
</html>
