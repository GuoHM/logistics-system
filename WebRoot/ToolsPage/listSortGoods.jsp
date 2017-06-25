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
<script src="../js/jquery.min.js"></script>
	<!-- 包含了所有编译插件 -->
	<script src="../js/bootstrap.min.js"></script>
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
				<th data-field="goodsId" data-sortable="true">快递单号</th>
				<th data-field="sendProvince">寄送省份</th>
				<th data-field="receiveProvince">发往省份</th>
				<th class="col-xs-2" data-field="action">查看详细信息</th>
			</tr>
		</thead>
		<tbody>
			<%
                List<Goods> goodslist = (List<Goods>) session.getAttribute("teamslist");
                if (goodslist != null) {
                    for (Goods n : goodslist) {
                        out.print("<tr>");
                        out.print("<td>" + n.getGoodsId() + "</td>");
                        out.print("<td>" + n.getSenderProvince() + "</td>");
                        out.print("<td>" + n.getReceiverProvince() + "</td>");
                        out.print("<td><a href=\" \"\">查看</a>&nbsp;");
                        out.print("</tr>");
                    }
                }
            %>
		</tbody>
	</table>
</div>
<form class="form-horizontal" role="form" method="post" action="">
	<div class="form-group" >
		<div class="col-sm-offset-2 col-sm-10">
			<label class="checkbox-inline"> <input type="submit"
				value="发往省分拣中心" class="btn btn-default"> </label> 
		</div>
	</div>

</form>


