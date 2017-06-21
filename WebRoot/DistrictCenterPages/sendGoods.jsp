<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>修改密码</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/bootstrap.css">
</head>
<body onload="today()">
	<jsp:include page="../ToolsPage/header.jsp"></jsp:include>
	<div class="maincontent">
		<div class="container">
			<div class="row clearfix">
				<div class="col-xs-2 column">
					<jsp:include page="sidebar.jsp"></jsp:include>
				</div>

				<div class="col-xs-5 column">
					<form class="form-horizontal" role="form" method="post"
						action="fillInfo" id="fillinfo">
						<h3>收件人信息</h3>
						<hr style="border-top: 1px ridge rgba(6, 3, 9, 0.47)">
						<div class="form-group">
							<label class="col-sm-4 control-label">收件人姓名</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="receiverName"
									required="required" >
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">收件人电话</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="receiverPhone"
									required="required" >
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">收件人省份</label>
							<div>
								<label class="checkbox-inline"> <select
									class="form-control" id="school" name="receiverProvince">
									<jsp:include page="../ToolsPage/provinceList.jsp"></jsp:include>	
								</select> </label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">收件人城市</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="receiverCity"
									required="required" >
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">收件人地址</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="receiverAddress"
									required="required" >
							</div>
						</div>
						<h3>寄件人信息</h3>
						<hr style="border-top: 1px ridge rgba(6, 3, 9, 0.47)">
						<div class="form-group">
							<label class="col-sm-4 control-label">寄件人姓名</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="senderName"
									required="required" >
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">寄件人电话</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="senderPhone"
									required="required" >
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">寄件人省份</label>
							<div>
								<label class="checkbox-inline"> <select
									class="form-control" id="school" name="senderProvince">
										<jsp:include page="../ToolsPage/provinceList.jsp"></jsp:include>
								</select> </label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">寄件人城市</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="senderCity"
									required="required" >
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">寄件人地址</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="senderAddress"
									required="required" >
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