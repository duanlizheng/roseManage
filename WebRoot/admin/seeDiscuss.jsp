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
        你可以在本版块查看具体的帖子内容，但是不能对帖子内容进行修改。
        </p>
      </div> <!-- description -->
    </div> <!-- main-box -->

    <div class="main-box">
      <div class="box-title">帖子内容
		<!-- <a class="add" href=""> <i class="fa fa-plus"></i> &nbsp;增加月季</a> -->
      </div>
      
      <table class="see addRose list">
        <tr>
          <td>用户</td>
          <td><input id="specie" name="specie" type="text" readonly="readonly"></td>
        </tr>
        <tr>
          <td>主题</td>
          <td><input id="specie" name="specie" type="text" readonly="readonly"></td>
        </tr>
        <tr>
          <td>时间</td>
          <td><input id="specie" name="specie" type="text" readonly="readonly"></td>
        </tr>
		<tr>
		  <td class="valign-top" valign="top">帖子内容</td>
		  <td>
		  	<textarea name="remark" id="remark" readonly="readonly"></textarea>
		  </td>
		</tr>

      </table>
    </div> <!-- main-box -->

<%@ include file="public/footer.jsp" %>