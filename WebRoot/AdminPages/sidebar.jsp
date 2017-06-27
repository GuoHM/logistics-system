<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<nav class="hidden-print hidden-xs hidden-sm affix">
	<ul class="nav">
		<li>
			<a href="<%=basePath%>/AdminPages/addDistrictCenter.jsp">
				<span>新增区县营业点</span>
			</a>
		</li>
		<li>
			<a href="<%=basePath%>/AdminPages/viewDistrictCenter.jsp">
				<span>查看区县营业点信息</span>
			</a>
		</li>
		<li>
			<a href="<%=basePath%>/AdminPages/addProvinceCenter.jsp">
				<span>新增省分拣中心</span>
			</a>
		</li>
		<li>
			<a href="getProvinceList.action">
				<span>查看省分拣中心信息</span>
			</a>
		</li>
		<li>
			<a href="<%=basePath%>/DistrictCenterPages/modifyPassword.jsp">
				<span>修改密码</span>
			</a>
		</li>
	</ul>
</nav>