<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<button id="login" type="button" class="btn btn-default dropdown-toggle"
	data-toggle="dropdown">
	登录<span class="caret"></span>
</button>
<ul class="dropdown-menu" role="menu">
	<li><a href="" id="item1">管理</a>
	</li>
	<li><a href="logout.action" id="item2">注销用户</a>
	</li>
</ul>