<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="bean.*"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
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
				<th data-field="transportationId" data-sortable="true">车号</th>
				<th data-field="departure">出发地</th>
				<th data-field="destination">目的地</th>
				<th data-field="capacity">载货量</th>
				<th class="col-xs-2" data-field="action">选择</th>
			</tr>
		</thead>
		<tbody>
			<%
                List<Transportation> transportationlist = (List<Transportation>) session.getAttribute("DistrictList");
                if (transportationlist != null) {
                    for (Transportation n : transportationlist) {
                        out.print("<tr>");
                        out.print("<td>" + n.getTransportationId() + "</td>");
                        out.print("<td>" + n.getDeparture() + "</td>");
                        out.print("<td>" + n.getDestintion() + "</td>");
                        out.print("<td>" + n.getCapacity() + "</td>");
                        out.print("<td><a href=\" \"\">选择</a>&nbsp;");
                        out.print("</tr>");
                    }
                }
            %>
		</tbody>
	</table>
</div>



