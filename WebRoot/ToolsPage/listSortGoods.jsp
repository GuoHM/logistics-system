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
				<th data-field="goodsId" data-sortable="true">快递单号</th>
				<th data-field="sendProvince">寄送省份</th>
				<th data-field="receiveProvince">发往省份</th>
				<th class="col-xs-2" data-field="action">查看详细信息</th>
			</tr>
		</thead>
		<tbody>
			<%
                List<Goods> goodslist = (List<Goods>) session.getAttribute("DistrictList");
                if (goodslist != null) {
                    for (Goods n : goodslist) {
                        out.print("<tr>");
                        out.print("<td>" + n.getGoodsId() + "</td>");
                        out.print("<td>" + n.getSenderProvince() + "</td>");
                        out.print("<td>" + n.getReceiverProvince() + "</td>");
                        out.print("<td><a href=\"viewGoods?currentGoods=" + n.getGoodsId() + "\">查看</a>");
                        out.print("</tr>");
                    }
                }
                Goods goodsinfo = (Goods)session.getAttribute("goodsInfo");
                if(goodsinfo==null) {
                	goodsinfo=new Goods();
                }
            %>
		</tbody>
	</table>
</div>

<div class="modal fade" id="showGoods" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
	aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">快递信息</h4>
					<h3>
						单号：<%=goodsinfo.getGoodsId()%>
					</h3>
					<h4>快递信息</h4>
					<label>
						收件人姓名：<%=goodsinfo.getReceiverName()%></label>
					<br />
					<label>
						收件人省份：<%=goodsinfo.getReceiverProvince()%></label>
					<br />
					<label>
						收件人城市：<%=goodsinfo.getReceiverCity()%></label>
					<br />
					<label>
						收件人区县：<%=goodsinfo.getReceiverDistrict()%></label>
					<br />
					<label>
						收件人地址：<%=goodsinfo.getReceiverAddress()%></label>
					<br />
					<label>
						收件人电话：<%=goodsinfo.getReceiverPhone()%></label>
					<br />
					<hr style="border-top: 1px ridge rgba(6, 3, 9, 0.47)">
					<label>
						寄件人姓名：<%=goodsinfo.getSenderName()%></label>
					<br />
					<label>
						寄件人省份：<%=goodsinfo.getSenderProvince()%></label>
					<br />
					<label>
						寄件人城市：<%=goodsinfo.getSenderCity()%></label>
					<br />
					<label>
						寄件人区县：<%=goodsinfo.getSenderDistrict()%></label>
					<br />
					<label>
						寄件人地址：<%=goodsinfo.getSenderAddress()%></label>
					<br />
					<label>
						寄件人电话：<%=goodsinfo.getSenderPhone()%></label>
					<br />
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
var show = "<%=show%>";
    $(function() {
	if (show == "show") {
	    $('#showGoods').modal({
		keyboard : true
	    })
	}

    });
</script>
<%
	session.removeAttribute("show");
%>




