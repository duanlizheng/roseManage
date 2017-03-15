<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<aside>
  <ul class="sideBar">
    <li><a href="admin/index.jsp"><i class="fa fa-home"></i>系统首页</a></li>

    <li class="submenu"><a href="javascript:void(0);"><i class="fa fa-folder"></i>月季管理  
      <i class="fa fa-angle-down fa-lg"></i> </a>
      <ul>
        <li><a href="admin/roseList.jsp"><i class="fa fa-caret-right"></i>月季列表</a></li>
        <li><a href="admin/editRose.jsp"><i class="fa fa-caret-right"></i>添加月季</a></li>
      </ul>
    </li>

    <li><a href="admin/commentList.jsp"><i class="fa fa-pencil-square"></i>留言管理</a></li>

    <li class="submenu"><a href="javascript:void(0);"><i class="fa fa-file-text"></i>论坛管理
      <i class="fa fa-angle-down fa-lg"></i> </a>
      <ul>
        <li><a href="admin/discussList.jsp"><i class="fa fa-caret-right"></i>帖子列表</a></li>
        <li><a href="admin/discussCom.jsp"><i class="fa fa-caret-right"></i>帖子评论</a></li>
      </ul>
    </li>
    
    <li class="submenu"><a href="javascript:void(0);"><i class="fa fa-users"></i>用户管理
      <i class="fa fa-angle-down fa-lg"></i> </a>
      <ul>
        <li><a href="admin/userCheck.jsp"><i class="fa fa-caret-right"></i>用户审核</a></li>
        <li><a href="admin/userList.jsp"><i class="fa fa-caret-right"></i>用户列表</a></li>
        <li><a href="admin/addUser.jsp"><i class="fa fa-caret-right"></i>添加用户</a></li>
      </ul>
    </li>

    <li class="submenu"><a href="javascript:void(0);"><i class="fa fa-cog"></i>管理员
      <i class="fa fa-angle-down fa-lg"></i> </a>
      <ul>
        <li><a href="admin/admin.jsp"><i class="fa fa-caret-right"></i>个人中心</a></li>
        <li><a href="admin/adminList.jsp"><i class="fa fa-caret-right"></i>管理员列表</a></li>
      </ul>
    </li>
  </ul>
  <span id="closeBar"><i id="closeLogo" class="fa fa-caret-left"></i></span>
</aside>

    