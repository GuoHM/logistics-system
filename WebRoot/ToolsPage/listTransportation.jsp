<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="bean.*"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String show = (String) session.getAttribute("show");
%>
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
<div class="panel-body" style="padding-bottom: 0px;">
	<table class="table table-hover" id="showWorksTable">
		<thead>
			<tr>
				<th data-field="departure">到达省份</th>
				<th data-field="capacity">件数</th>
				<th class="col-xs-2" data-field="action">车辆选择</th>
			</tr>
		</thead>
		<tbody>
			<%
				String[][] centerProvincearray = (String[][]) session
						.getAttribute("centerProvincearray");
				if (centerProvincearray != null) {
					for (int i = 0; i < centerProvincearray.length; i++) {
						out.print("<tr>");
						out.print("<td>" + centerProvincearray[i][0] + "</td>");
						out.print("<td>" + centerProvincearray[i][1] + "</td>");
						out.print("<td><a href=\" \"\">选择车辆</a>&nbsp;");
						out.print("</tr>");
					}
				}
			%>
		</tbody>
	</table>
</div>

<div class="modal fade" id="showStudent" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">选择车辆</h4>
				<table class="table table-hover" id="showWorksTable">
					<thead>
						<tr>
							<th data-field="departure">出发地</th>
							<th data-field="capacity">目的地</th>
							<th data-field="capacity">载货量</th>
							<th class="col-xs-2" data-field="action">车辆选择</th>
						</tr>
					</thead>
					<tbody>
					<%
					
					 %>
					</tbody>
			</div>
		</div>
	</div>
</div>