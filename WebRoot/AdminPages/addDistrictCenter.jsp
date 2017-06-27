<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>新增区县营业点</title>
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
				<div class="col-xs-5 column">
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
							<label class="col-sm-4 control-label">密码</label>
							<div class="col-sm-7">
								<input type="password" class="form-control" name="newpassword"
									placeholder="请输入新密码" required="required">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">重复密码</label>
							<div class="col-sm-7">
								<input type="password" class="form-control"
									name="passwordrepeat" placeholder="请重复新密码" required="required">
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
	<script src="../js/bootstrapValidator.min.js"></script>
	<script src="../js/validator/modifyPwdValidator.js"></script>
	<script src="../js/main.js"></script>
</body>
</html>