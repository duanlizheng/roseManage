<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>花容月貌 管理中心</title>
 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <!-- css reset -->
    <link href="css/reset-rose.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/admin.css" rel="stylesheet">
  </head>
  <body>
  
    <header>
      <div class="logo">
        <a href=""> <i class="fa fa-tencent-weibo"></i> &nbsp;&nbsp;花容月貌 </a>
      </div>

      <nav>
        <ul class="ul-left">
          <li><a href="">前台首页</a></li>
          <li><a href="">数据导入</a></li>
          <li><a href="">数据导出</a></li>
          <li><a href="">系统信息</a></li>
        </ul>

        <ul class="ul-right">
          <li><a href="javascript:void(0);">超级管理员</a></li>
          <li><a href="">admin  &nbsp;<i class="fa fa-caret-down fa-lg"></i></a>
            <div class="admin-action">
              <a href="">个人中心</a>
              <a href="">切换账户</a>
            </div>
          </li>
          <li><a href="">退出</a></li>
        </ul>
      </nav>
    </header>
