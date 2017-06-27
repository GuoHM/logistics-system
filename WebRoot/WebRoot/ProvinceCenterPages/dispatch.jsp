<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
	String show = (String) session.getAttribute("show");
%>
<head>
<meta charset="UTF-8">
<title>派送</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="stylesheet" href="<%=basePath%>/css/style.css">
<link rel="stylesheet" href="<%=basePath%>/css/bootstrap.css">
<link rel="stylesheet" href="<%=basePath%>/css/bootstrapValidator.min.css">
<script src="<%=basePath%>/js/jquery.min.js"></script>
	<!-- 包含了所有编译插件 -->
	<script src="<%=basePath%>/js/bootstrap.min.js"></script>
<script src="<%=basePath%>/js/bootstrap-table.js"></script>
<script src="<%=basePath%>/js/bootstrap-table-zh-CN.js"></script>
<script src="<%=basePath%>/js/initTable.js"></script>
<link href="<%=basePath%>/css/bootstrap-table.css" rel="stylesheet" />
<script src="<%=basePath%>/js/bootstrap-table-export.js"></script>
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
					<div class="panel-body" style="padding-bottom: 0px;">
						<table class="table table-hover" id="showWorksTable">
							<thead>
								<tr>
									<th data-field="departure">区县营业点</th>
									<th data-field="capacity">件数</th>
								</tr>
							</thead>
							<tbody>
							<%
							String[][] list = (String[][]) session.getAttribute("senderDistrictarray");
							if (list != null) {
						for (int i = 0; i < list.length; i++) {
							if (list[i][0] != null&&list[i][1] != null) {
								out.print("<tr>");
								out.print("<td>" + list[i][0] + "</td>");
								out.print("<td>" + list[i][1] + "</td>");
								out.print("</tr>");
							}
						}
					}
							
							 %>
							</tbody>
						</table>
					</div>
					<form class="form-horizontal" role="form" method="post" action="addsenderDistrictListStatus">
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<label class="checkbox-inline"> <input type="submit"
									value="发往区县" class="btn btn-default"> </label>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

		<script src="<%=basePath%>/js/main.js"></script>
</body>
</html>
