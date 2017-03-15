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
        你可以在本版块审核注册用户, <i class="fa fa-check fa-lg"></i> 表示批量审核用户， <i class="fa fa-close fa-lg"></i> 表示批量拒绝用户。
        </p>
      </div> <!-- description -->
    </div> <!-- main-box -->

    <div class="main-box">
      <div class="box-title">审核列表
		<!-- <a class="add" href=""> <i class="fa fa-plus"></i> &nbsp;增加月季</a> -->
      </div>
      
      <table class="list">
      	<tr>
      		<th><input id="multiChecked" type="checkBox"></th>
      		<th>#</th>
      		<th>用户名</th>
      		<th>学/工号</th>
      		<th>性别</th>
      		<th>年龄</th>
      		<th>学院</th>
      		<th>专业</th>
      		<th>操作</th>
      	</tr>
        <%
        for(int i=0;i<10;i++) {
        %>
            <tr>
              <td><input type="checkBox"></td>
              <td>1</td>
              <td>玫瑰</td>
              <td>鲜花</td>
              <td>株型</td>
              <td>中等</td>
              <td>浅绿</td>
              <td>无</td>
              <td class="action">
              	<a href="">通过</a><!--
              	--><a href="">拒绝</a>
              </td>
            </tr>
        <%
        }
        %>
        <tr class="tfoot">
        	<td class="multiDelete" title="批量审核"> <i class="fa fa-check fa-lg"></i> </td>
        	<td class="multiDelete" title="批量拒绝"> <i class="fa fa-close fa-lg"></i> </td>
        	<td class="page" colspan="10">总计 15 个记录，共 1 页，当前第 1 页 | 第一页 上一页 下一页 最末页</td>
        </tr>
      </table>
    </div> <!-- main-box -->

	<script>
		/* 复选框批量选中 */
		var multiCheckBox = document.getElementById("multiChecked");
		var trs = document.getElementsByTagName("tr");
		multiCheckBox.addEventListener("click",function() {
			for (var i=1;i<trs.length-1;i++) {
				if(multiCheckBox.checked) {
					trs[i].childNodes[1].childNodes[0].checked = true;
				} else {
					trs[i].childNodes[1].childNodes[0].checked = false;
				}
			}
		},false);
	</script>

<%@ include file="public/footer.jsp" %>