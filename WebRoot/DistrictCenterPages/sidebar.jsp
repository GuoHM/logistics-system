<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<nav class="hidden-print hidden-xs hidden-sm affix">
	<ul class="nav">
		<li>
			<a href="<%=basePath%>/DistrictCenterPages/modifyGoodsInfo.jsp">
				<span>修改订单</span>
			</a>
		</li>
		<li>
			<a href="<%=basePath%>/DistrictCenterPages/printinfo.jsp">
				<span>打印订单</span>
			</a>
		</li>
		<li>
			<a href="getGoodsByDistrict.action">
				<span>分拣</span>
			</a>
		</li>
		<li>
			<a href="getGoodsByreceiverDistrict.action">
				<span>派送</span>
			</a>
		</li>
		<li>
			<a href="<%=basePath%>/DistrictCenterPages/modifyPassword.jsp">
				<span>修改密码</span>
			</a>
		</li>
	</ul>
</nav>