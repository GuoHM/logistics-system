<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<nav class="hidden-print hidden-xs hidden-sm affix">
	<ul class="nav ">
		<li>
			<a href="<%=basePath%>/ProvinceCenterPages/transportationManage.jsp">
				<span>运输管理</span>
			</a>
		</li>
		<li>
			<a href="charts.html">
				<span>查询</span>
			</a>
		</li>
		<li>
			<a href="<%=basePath%>/ProvinceCenterPages/modifyPassword.jsp">
				<span>修改密码</span>
			</a>
		</li>
	</ul>
</nav>