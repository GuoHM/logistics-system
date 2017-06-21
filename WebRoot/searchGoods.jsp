<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>查询快递</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body onload="today()">
	<jsp:include page="ToolsPage/header.jsp"></jsp:include>
	<div class="maincontent">
		<div class="container">
			<div class="row clearfix">
				<div class="col-xs-10 column">
					<form class="form-inline" role="form" action="">
						<div class="form-group">
							<label class="col-sm-4 control-label">单号：</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="goodsID"
									required="required">
							</div>
						</div>
						<button type="submit" class="btn btn-default">提交</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<script src="js/jquery.min.js"></script>
	<!-- 包含了所有编译插件 -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>