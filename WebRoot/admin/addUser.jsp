<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="public/header.jsp" %>
<%@ include file="public/aside.jsp" %>

<div id="container" class="container">
  <p class="path">
    <i class="fa fa-angle-double-left fa-lg"></i>
    <span>花容月貌 管理中心</span>
  </p>
  <div class="main">
    <div class="main-box">
      <div class="box-title">版块说明</div>
      <div class="description">
        <p>
        你可以在本版块添加用户，请完善用户信息。
        </p>
      </div> <!-- description -->
    </div> <!-- main-box -->

    <div class="main-box">
      <div class="box-title">添加用户
		<!-- <a class="add" href=""> <i class="fa fa-plus"></i> &nbsp;增加月季</a> -->
      </div>
      
      <table class="see addRose list">
        <tr>
          <td>用户名</td>
          <td><input id="specie" name="specie" type="text"></td>
        </tr>
        <tr>
          <td>学/工号</td>
          <td><input id="specie" name="specie" type="text"></td>
        </tr>
        <tr>
          <td>密码</td>
          <td><input id="specie" name="specie" type="password"></td>
        </tr><tr>
          <td>确认密码</td>
          <td><input id="specie" name="specie" type="password"></td>
        </tr>
        <tr>
          <td>性别</td>
          <td>
          	男：<input id="specie" name="specie" type="radio" value="男">&nbsp;&nbsp;&nbsp;
          	女：<input id="specie" name="specie" type="radio" value="女">
          </td>
        </tr>
        <tr>
          <td>年龄</td>
          <td><input id="specie" name="specie" type="text"></td>
        </tr>
        <tr>
          <td>学院</td>
          <td><input id="specie" name="specie" type="text"></td>
        </tr>
        <tr>
          <td>专业</td>
          <td><input id="specie" name="specie" type="text"></td>
        </tr>
        <tr>
		  <td></td>
		  <td>
		  	<input class="btn" type="submit" value="提交">
		  </td>
		</tr>

      </table>
    </div> <!-- main-box -->

<%@ include file="public/footer.jsp" %>