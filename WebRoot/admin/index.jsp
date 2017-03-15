<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="public/header.jsp" %>
<%@ include file="public/aside.jsp" %>

<div id="container" class="container">
  <p class="path">
    <i class="fa fa-angle-double-left fa-lg"></i>
    <span>花容月貌 管理中心</span>
  </p>
  <div class="main">
    <div id="warning" class="warning">
      <p>欢迎使用 花容月貌 后台管理系统，如果您在使用过程中遇到什么问题可以联系我们，希望您使用愉快！</p>
      <i id="close" class="fa fa-close"></i>
    </div> <!-- warning -->
    
    <div class="main-box">
      <div class="box-title">系统首页</div>
      <div class="description">
        <p>
        本系统所有功能请参考左侧菜单，点击菜单将进入对应的管理页面。各个页面都有相应的版块说明，描述了该版块的内容、功能以及使用方法。本系统实行分级管理，管理员分为超级管理员、普通管理员。不同等级的管理员可以使用的功能有所不同。首页主要展示了网站的基本信息、服务器信息、系统开发信息。
        </p>
      </div> <!-- description -->
    </div> <!-- main-box -->

    <div class="main-box">
      <div class="box-title">网站基本信息</div>
      <table>
          <%
  			for (int i = 1; i<=4; i++) {
  		  %>
            <tr>
              <td>月季总数：</td>
              <td>2000</td>
              <td>月季种类：</td>
              <td>200</td>
              <td>月季种类：</td>
              <td>200</td>
              <td>月季种类：</td>
              <td>200</td>
            </tr>
        <%
        }
        %>
      </table>
    </div> <!-- main-box -->

    <div class="left-box">
      <div class="box-title">服务器信息</div>
      <table>
          <%
  			for (int i = 1; i<=4; i++) {
  		  %>
          <tr>
            <td>月季总数：</td>
            <td>2000</td>
            <td>月季种类：</td>
            <td>200</td>
          </tr>
        <%
        }
        %>
      </table>
    </div> <!-- left-box -->

    <div class="right-box">
      <div class="box-title">系统开发</div>
      <table>
          <%
  			for (int i = 1; i<=4; i++) {
  		  %>
          <tr>
            <td>月季总数：</td>
            <td>2000</td>
            <td>月季种类：</td>
            <td>200</td>
            <td>月季种类：</td>
            <td>200</td>
          </tr>
        <%
        }
        %>
      </table>
    </div> <!-- right-box -->
    
    <script>

      /* 警告框关闭 */
      document.getElementById("close").addEventListener("click",function() {
        document.getElementById("warning").style.display = "none";
      },false);
      
    </script>

<%@ include file="public/footer.jsp" %>