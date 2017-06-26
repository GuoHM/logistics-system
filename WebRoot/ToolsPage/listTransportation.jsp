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
				<th data-field="departure">到达省份</th>
				<th data-field="capacity">件数</th>
				<th class="col-xs-2" data-field="action">车辆选择</th>
			</tr>
		</thead>
		<tbody>
			<%
				String[][] centerProvincearray = (String[][]) session.getAttribute("senderProvincearray");
					System.out.println(centerProvincearray);
					ProvinceCenter a = (ProvinceCenter) session.getAttribute("login");
					String depature = a.getProvince();
					if (centerProvincearray != null) {
						for (int i = 0; i < centerProvincearray.length; i++) {
							if (centerProvincearray[i][0] != null) {
								out.print("<tr>");
								out.print("<td>" + centerProvincearray[i][0] + "</td>");
								out.print("<td>" + centerProvincearray[i][1] + "</td>");
								out.print("<td><a href=\"viewTransportation?depature=" + depature + "&destination="
										+ centerProvincearray[i][0] + "&amount=" + centerProvincearray[i][1] + "\">查看车辆</a>");
								out.print("</tr>");
							}
						}
					}
					String amount = (String)session.getAttribute("amount");
			%>
		</tbody>
	</table>
</div>

<div class="modal fade" id="showTransportation" tabindex="-1"
	role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">选择车辆</h4>
				<label>当前货物量：<%=amount%></label>
				<form class="form-horizontal" role="form" method="post" >
					<table class="table table-hover" id="showWorksTable">
						<thead>
							<tr>
								<th data-field="departure">车号</th>
								<th data-field="departure">出发地</th>
								<th data-field="capacity">目的地</th>
								<th data-field="capacity">载货量</th>
								<th class="col-xs-2" data-field="action">车辆选择</th>
							</tr>
						</thead>
						<tbody>
							<%
								List<Transportation> list = (List<Transportation>) session.getAttribute("transporationlist");
												if (list != null) {
													for (Transportation n : list) {
														out.print("<tr>");
														out.print("<td>" + n.getTransportationId() + "</td>");
														out.print("<td>" + n.getDeparture() + "</td>");
														out.print("<td>" + n.getDestintion() + "</td>");
														out.print("<td>" + n.getCapacity() + "</td>");
														out.print("<td><input type=\"checkbox\" name=\"box\" value=\""+n.getTransportationId()+"\">");
														out.print("</tr>");
													}
												}
							%>
						</tbody>
					</table>
					<div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <label class="checkbox-inline">
                                    <input type="submit" value="确定" class="btn btn-default">
                                </label>
                                <label class="checkbox-inline">
                                    <input type="reset" value="重置" class="btn btn-default">
                                </label>
                            </div>
                        </div>
				</form>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
var show = "<%=show%>";
	$(function() {
		if (show == "show") {
			$('#showTransportation').modal({
				keyboard : true
			})
		}

	});
</script>
<%
	session.removeAttribute("show");
%>
