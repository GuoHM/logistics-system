<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<head>
<meta charset="UTF-8">
<title>物流管理系统</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="stylesheet" href="<%=basePath %>css/style.css">
<link rel="stylesheet" href="<%=basePath %>css/bootstrap.css">
</head>
<body onload="today()">
	<jsp:include page="ToolsPage/header.jsp"></jsp:include>
	<div class="background-color">
		<div class="container">
			<div class="carousel slide carousel-size" id="carousel-871299">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-871299"></li>
					<li data-slide-to="1" data-target="#carousel-871299"></li>
					<li data-slide-to="2" data-target="#carousel-871299"></li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="" src="<%=basePath %>/img/mainpage1.jpg" class="img-responsive center-block" />
						<div class="carousel-caption">
							<h2>物流管理系统</h2>
						</div>
					</div>
					<div class="item">
						<img alt="" src="<%=basePath %>/img/mainpage.jpg" class="img-responsive center-block" />
						<div class="carousel-caption">
							<h4>竭诚为您服务</h4>
						</div>
					</div>
					<div class="item">
						<img alt="" src="<%=basePath %>/img/mainpage2.jpg" class="img-responsive center-block" />
						<div class="carousel-caption">
							<h4>竭诚为您服务</h4>
						</div>
					</div>
				</div>
				<a class="left carousel-control" href="#carousel-871299" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
				</a>
				<a class="right carousel-control" href="#carousel-871299" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>
	</div>

	<div class="container">
		<hr style="border-top: 1px ridge rgba(6, 3, 9, 0.47)">
		<div class="row clearfix">
			<div class="col-md-4 column" style="text-align: center">
				<a class="btn" href="<%=basePath %>/info.jsp" style="color: black">
					<h2>
						<span class="glyphicon glyphicon-comment">网点查询</span>
					</h2>
				</a>
				<p>了解更多网点信息</p>

			</div>
			<div class="col-md-4 column" style="text-align: center">
				<a class="btn" href="<%=basePath %>/searchGoods.jsp" style="color: black">
					<h2>
						<span class="glyphicon glyphicon-star">快递查询</span>
					</h2>
				</a>
				<p>查询您的快递</p>
			</div>
			<div class="col-md-4 column" style="text-align: center">
				<a class="btn" href="<%=basePath %>/info.jsp" style="color: black">
					<h2>
						<span class="glyphicon glyphicon-inbox">关于我们</span>
					</h2>
				</a>
				<p>了解更多本公司信息</p>

			</div>
			<div class="col-md-4 column" style="text-align: center">
				<a class="btn" href="<%=basePath %>/warning.jsp" style="color: black">
					<h2>
						<span class="glyphicon glyphicon-th-list">注意事项</span>
					</h2>
				</a>
				<p>收寄快递过程中需要注意的事项</p>

			</div>
			<div class="col-md-4 column" style="text-align: center">
				<a class="btn" href="getGoodsID.action" style="color: black">
					<h2>
						<span class="glyphicon glyphicon-envelope">寄快递</span>
					</h2>
				</a>
				<p>欢迎寄送快递</p>

			</div>
			<div class="col-md-4 column" style="text-align: center">
				<a class="btn" href="<%=basePath %>/login.jsp" style="color: black">
					<h2>
						<span class="glyphicon glyphicon-user">登录</span>
					</h2>
				</a>
				<p>网点用户登录</p>
			</div>
		</div>
	</div>

	<footer id="fh5co-footer" role="contentinfo">
		<div class="row copyright">
			<div class="col-md-12 text-center">
				<p>
					<small class="block">Copyright © 2017 Guo Haoming,Yang Hanxiao.All rights reserved.</small>
				</p>
			</div>
		</div>
	</footer>
	<!-- jQuery (Bootstrap 插件需要引入) -->
	<script src="<%=basePath %>/js/jquery.min.js"></script>
	<!-- 包含了所有编译插件 -->
	<script src="<%=basePath %>/js/bootstrap.min.js"></script>
	<script src="<%=basePath %>/js/main.js"></script>
</body>
</html>