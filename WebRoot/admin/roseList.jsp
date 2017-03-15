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
        你可以在本版块查看所有的月季品种，并且可以根据筛选条件搜索具体的月季品种，还可以对月季进行增加、修改、删除等操作， <i class="fa fa-trash fa-lg"></i> 表示批量删除。
        </p>
      </div> <!-- description -->
    </div> <!-- main-box -->

    <div class="main-box">
      <div class="box-title">月季列表
		<!-- <a class="add" href=""> <i class="fa fa-plus"></i> &nbsp;增加月季</a> -->
      </div>
      
      <div class="search">
      	<form action="">
      		<select name="" id="">
      			<option value="">未分类</option>
      			<option value="">蔷薇属原种</option>
      			<option value="">古老蔷薇/月季</option>
      			<option value="">现代月季</option>
      		</select>
      		<input type="text">
      		<input class="btn" type="submit" value="筛选">
      	</form>
      </div> <!-- search -->

      <table class="list">
      	<tr>
      		<th><input id="multiChecked" type="checkBox"></th>
      		<th>#</th>
      		<th>品种名</th>
      		<th>分类</th>
      		<th>株型</th>
      		<th>株高</th>
      		<th>嫩枝颜色</th>
      		<th>有无刺</th>
      		<th>小叶数量</th>
      		<th>小叶形态</th>
      		<th>叶片大小</th>
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
              <td>200</td>
              <td>卷型</td>
              <td>200</td>
              <td class="action">
              	<a href="admin/editRose.jsp">编辑</a><!--
              	--><a href="">删除</a>
              </td>
            </tr>
        <%
        }
        %>
        <tr class="tfoot">
        	<td class="multiDelete" title="批量删除"> <i class="fa fa-trash fa-lg"></i> </td>
        	<td class="page" colspan="11">总计 15 个记录，共 1 页，当前第 1 页 | 第一页 上一页 下一页 最末页</td>
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