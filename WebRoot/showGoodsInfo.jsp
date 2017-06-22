<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="bean.Goods"%>
<%
	Goods goodsinfo = (Goods) session.getAttribute("goodsinfo");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>寄快递</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body onload="today()">
	<jsp:include page="ToolsPage/header.jsp"></jsp:include>
	<div class="maincontent">
		<div class="container">
			<div class="row clearfix">
				<div class="col-xs-10 column">
					<h3>
						快递提交成功！单号：<%=goodsinfo.getGoodsId()%>
					</h3>
					<h4>快递信息</h4>
					<label>收件人姓名：<%=goodsinfo.getReceiverName()%></label><br /> <label>收件人省份：<%=goodsinfo.getReceiverProvince()%></label><br />
					<label>收件人城市：<%=goodsinfo.getReceiverCity()%></label><br /> <label>收件人地址：<%=goodsinfo.getReceiverAddress() %></label><br />
					<label>收件人电话：<%=goodsinfo.getReceiverPhone() %></label><br /> 
					<hr style="border-top: 1px ridge rgba(6, 3, 9, 0.47)">
					<label>寄件人姓名：<%=goodsinfo.getSenderName() %></label><br />
					<label>寄件人省份：<%=goodsinfo.getSenderProvince() %></label><br /> <label>寄件人城市：<%=goodsinfo.getSenderCity() %></label><br />
					<label>寄件人地址：<%=goodsinfo.getSenderAddress() %></label><br /> <label>寄件人电话：<%=goodsinfo.getSenderPhone() %></label><br />
					<button onclick="window.location='index.jsp'">返回首页</button>
				</div>
			</div>
		</div>
	</div>

	<script src="js/jquery.min.js"></script>
	<!-- 包含了所有编译插件 -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>