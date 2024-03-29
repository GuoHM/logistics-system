<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="bean.*"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String type = (String) session.getAttribute("type");
	String loginName = null;
	boolean isLogin = false;
	if (type != null) {
		switch (type) {
			case "1" :
				DistrictCenter districtCenter = (DistrictCenter) session
						.getAttribute("login");
				loginName = districtCenter.getCity()
						+ districtCenter.getDistrict() + "营业点";
				break;
			case "2" :
				ProvinceCenter provinceCenter = (ProvinceCenter) session
						.getAttribute("login");
				loginName = provinceCenter.getProvince() + "分拣中心";
				break;
			case "3" :
				Admin admin = (Admin) session.getAttribute("login");
				loginName = admin.getAdminId() + "管理员";
				break;
		}
		isLogin = true;
	}
%>
<div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="#" name="date"></a>
	</div>
	<div class="collapse navbar-collapse menubar-left">
		<ul class="nav navbar-nav">
			<li><a href="<%=basePath%>/index.jsp"> <span
					class="glyphicon glyphicon-home">首页</span> </a>
			</li>
			<li><a href="getGoodsID.action"> <span
					class="glyphicon glyphicon-envelope">寄快递</span> </a>
			</li>
			<li><a href="<%=basePath%>/centerSearch.jsp"> <span
					class="glyphicon glyphicon glyphicon-lock">网点查询</span> </a>
			</li>
			<li><a href="<%=basePath%>/searchGoods.jsp"> <span
					class="glyphicon glyphicon-book">快递查询</span> </a>
			</li>
			<li><a href="<%=basePath%>/info.jsp"> <span
					class="glyphicon glyphicon-th">关于我们</span> </a>
			</li>
			<li><a href="<%=basePath%>/warning.jsp"> <span
					class="glyphicon glyphicon-star">注意事项</span> </a>
			</li>
		</ul>
	</div>
	<!-- /.nav-collapse -->
	<div class="btn-group menubar-right">
		<c:choose>
			<c:when test="<%=isLogin %>">
				<jsp:include page="loginButton.jsp"></jsp:include>
			</c:when>
			<c:otherwise>
				<button type="button" class="btn btn-default" onclick="window.location='<%=basePath %>/login.jsp'">登录</button>
			</c:otherwise>
		</c:choose>
	</div>
</div>
<script type="text/javascript">
    var type =<%=type%>;
	var loginname = "<%=loginName%>";
    if (loginname != null && type != null) {
	var node = document.getElementById("login");
	var item1 = document.getElementById("item1");
	var item2 = document.getElementById("item2");
	node.innerHTML = "当前用户："+loginname;
	switch (type) {
	case 1:
	    item1.setAttribute("href", "<%=basePath%>/DistrictCenterPages/districtCenter.jsp");
	    break;
	case 2:
	    item1.setAttribute("href", "<%=basePath%>/ProvinceCenterPages/provinceCenter.jsp");
	    break;
	case 3:
	    item1.setAttribute("href", "<%=basePath%>/AdminUserPages/AdminUser.jsp");
		break;
		}
	}
</script>