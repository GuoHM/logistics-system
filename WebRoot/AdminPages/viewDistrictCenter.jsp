<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="bean.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>查看区县营业点</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/bootstrapValidator.min.css">
</head>
<body onload="today()">
	<jsp:include page="../ToolsPage/header.jsp"></jsp:include>
	<div class="maincontent">
		<div class="container">
			<div class="row clearfix">
				<div class="col-xs-2 column">
					<jsp:include page="sidebar.jsp"></jsp:include>
				</div>
				<div class="col-xs-10 column">
					<form class="form-horizontal" role="form" method="post"
						id="modifyPwd" action="">
						<div class="form-group">
							<label class="col-sm-4 control-label">省份</label>
							<div>
								<label class="checkbox-inline"> <select
									class="form-control" id="school" name="province">
										<jsp:include page="../ToolsPage/provinceList.jsp"></jsp:include>
								</select> </label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">城市</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="city"
									placeholder="请输入城市" required="required">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">区县</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="district"
									placeholder="请输入区县" required="required">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<label class="checkbox-inline"> <input type="submit"
									value="提交" class="btn btn-default"> </label> <label
									class="checkbox-inline"> <input type="reset" value="重置"
									class="btn btn-default"> </label>
							</div>
						</div>
					</form>
					<form class="form-horizontal" role="form" method="post"
						id="modifyPwd" action="">
						<div class="panel-body" style="padding-bottom: 0px;">
							<table class="table table-hover" id="showWorksTable">
								<thead>
									<tr>
										<th data-field="departure">区县营业点编号</th>
										<th data-field="capacity">省份</th>
										<th data-field="transportation">城市</th>
										<th data-field="action">区县</th>
										<th data-field="password">密码</th>
										<th data-field="delete">删除</th>
									</tr>
								</thead>
								<tbody>
									<%
										List<DistrictCenter> districtlist = (List<DistrictCenter>) session
												.getAttribute("senderProvincearray");
										if (districtlist != null) {
											for (DistrictCenter n : districtlist) {
												out.print("<tr>");
												out.print("<td>" + n.getCenterId() + "</td>");
												out.print("<td>" + n.getProvince() + "</td>");
												out.print("<td>" + n.getCity() + "</td>");
												out.print("<td>" + n.getDistrict() + "</td>");
												out.print("<td>" + n.getPwd() + "</td>");
												out.print("<td><a href=\"deleteDistrictCenter?centerId="
														+ n.getCenterId() + "\">删除</a>");
												out.print("</tr>");
											}
										}
									%>
								</tbody>
							</table>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<script src="../js/jquery.min.js"></script>
	<!-- 包含了所有编译插件 -->
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/main.js"></script>
</body>
</html>