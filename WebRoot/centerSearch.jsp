<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="bean.*"%>
<%@page import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>查看网点营业点</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="stylesheet" href="<%=basePath%>/css/style.css">
<link rel="stylesheet" href="<%=basePath%>/css/bootstrap.css">
<script src="<%=basePath%>/js/jquery.min.js"></script>
<!-- 包含了所有编译插件 -->
<script src="<%=basePath%>/js/bootstrap.min.js"></script>
<script src="<%=basePath%>/js/bootstrap-table.js"></script>
<script src="<%=basePath%>/js/bootstrap-table-zh-CN.js"></script>
<script src="<%=basePath%>/js/initTable.js"></script>
<link href="<%=basePath%>/css/bootstrap-table.css" rel="stylesheet" />
<script src="<%=basePath%>/js/bootstrap-table-export.js"></script>
<script
	src="//rawgit.com/hhurz/tableExport.jquery.plugin/master/tableExport.js"></script>
</head>
<body onload="today()">
	<jsp:include page="ToolsPage/header.jsp"></jsp:include>
	<div class="maincontent">
		<div class="container">
			<div class="row clearfix">
				<div class="col-xs-10 column">
					<form class="form-horizontal" role="form" method="post"
						id="modifyPwd" action="getDistrictListFront">
						<div class="form-group">
							<label class="col-sm-4 control-label">省份</label>
							<div>
								<label class="checkbox-inline"> <select
									class="form-control" id="school" name="provinceName">
										<jsp:include page="ToolsPage/provinceList.jsp"></jsp:include>
								</select> </label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">城市</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="cityName"
									placeholder="请输入城市" required="required">
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
						id="modifyPwd" action="getDistrictListFront">
						<div class="panel-body" style="padding-bottom: 0px;">
							<table class="table table-hover" id="showWorksTable">
								<thead>
									<tr>
										<th data-field="departure">区县营业点编号</th>
										<th data-field="capacity">省份</th>
										<th data-field="transportation">城市</th>
										<th data-field="action">区县</th>
									</tr>
								</thead>
								<tbody>
									<%
										List<DistrictCenter> districtlist = (List<DistrictCenter>) session
												.getAttribute("Districtlist");
										if (districtlist != null) {
											for (DistrictCenter n : districtlist) {
												out.print("<tr>");
												out.print("<td>" + n.getCenterId() + "</td>");
												out.print("<td>" + n.getProvince() + "</td>");
												out.print("<td>" + n.getCity() + "</td>");
												out.print("<td>" + n.getDistrict() + "</td>");
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


	<script src="<%=basePath%>/js/main.js"></script>
</body>
</html>