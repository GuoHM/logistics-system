<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="bean.*"%>
<%@page import="java.util.*"%>
<%
	Goods goodsinfo = (Goods) session.getAttribute("getGoodsByID");
	List<GoodsStatus> goodsStatus = (List<GoodsStatus>) session.getAttribute("statuslist");
	System.out.println(goodsStatus);
	if (goodsinfo == null) {
		goodsinfo = new Goods();
	}
%>
<%!public String change(String s) {
		if (s != null) {
			return s;
		}
		return "";
	}
	%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>查询快递</title>
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
					<form class="form-inline" role="form" action="searchGoodsByID">
						<div class="form-group">
							<label class="col-sm-4 control-label">单号：</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="searchGoodsId" required="required">
							</div>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-default">提交</button>
						</div>
						<s:actionerror />
						<s:actionmessage />
					</form>
					<h4 style="color: red;">快递状态</h4>
					<hr style="border-top: 1px ridge rgba(6, 3, 9, 0.47)">
					<%
						ResourceBundle res = ResourceBundle.getBundle("status");
						String s = null;
						if (goodsStatus != null) {
							for (GoodsStatus n : goodsStatus) {
								String sendDistrict = n.getGoods().getSenderDistrict();
								String sendProvince = n.getGoods().getSenderProvince();
								String receiveProvince = n.getGoods().getReceiverProvince();
								String receiveDistrict = n.getGoods().getReceiverDistrict();
								System.out.println(receiveDistrict);
								switch (n.getConditions().getConditionId()) {
								case "1":
									s = res.getString(n.getConditions().getConditionId()) + "单号：" + n.getGoods().getGoodsId();
									break;
								case "2":
									s = res.getString(n.getConditions().getConditionId()).replaceAll("A",
											sendDistrict);
									break;
								case "3":
									s = res.getString(n.getConditions().getConditionId()).replaceAll("A",
											sendProvince);
									break;
								case "4":
									s = res.getString(n.getConditions().getConditionId()).replaceAll("A",
											receiveProvince);
									break;
								case "5":
									s = res.getString(n.getConditions().getConditionId()).replaceAll("A",
											receiveDistrict);
									break;
								}
								out.println("<label>" + s + "</label><br/>");
							}
						}
					%>
					<h4 style="color: red;">快递信息</h4>
					<hr style="border-top: 1px ridge rgba(6, 3, 9, 0.47)">
					<label>
						单号：<%=change(goodsinfo.getGoodsId())%></label>
					<br />
					<h4 style="color: red;">收件人信息</h4>
					<hr style="border-top: 1px ridge rgba(6, 3, 9, 0.47)">
					<label>
						收件人姓名：<%=change(goodsinfo.getReceiverName())%></label>
					<br />
					<label>
						收件人省份：<%=change(goodsinfo.getReceiverProvince())%></label>
					<br />
					<label>
						收件人城市：<%=change(goodsinfo.getReceiverCity())%></label>
					<br />
					<label>
						收件人区县：<%=change(goodsinfo.getReceiverDistrict())%></label>
					<br />
					<label>
						收件人地址：<%=change(goodsinfo.getReceiverAddress())%></label>
					<br />
					<label>
						收件人电话：<%=change(goodsinfo.getReceiverPhone())%></label>
					<br />
					<h4 style="color: red;">寄件人信息</h4>
					<hr style="border-top: 1px ridge rgba(6, 3, 9, 0.47)">

					<label>
						寄件人姓名：<%=change(goodsinfo.getSenderName())%></label>
					<br />
					<label>
						寄件人省份：<%=change(goodsinfo.getSenderProvince())%></label>
					<br />
					<label>
						寄件人城市：<%=change(goodsinfo.getSenderCity())%></label>
					<br />
					<label>
						寄件人区县：<%=change(goodsinfo.getSenderDistrict())%></label>
					<br />
					<label>
						寄件人地址：<%=change(goodsinfo.getSenderAddress())%></label>
					<br />
					<label>
						寄件人电话：<%=change(goodsinfo.getSenderPhone())%></label>
					<br />

					<button class="btn btn-default" onclick="window.location='index.jsp'">返回首页</button>
				</div>
			</div>
		</div>
	</div>
	<%
		session.removeAttribute("getGoodsByID");
		session.removeAttribute("statuslist");
	%>

	<script src="js/jquery.min.js"></script>
	<!-- 包含了所有编译插件 -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>