<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>分拣</title>
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
				<div class="col-xs-10 column">
					<jsp:include page="../ToolsPage/listTransportation.jsp"></jsp:include>
				</div>
				<form class="form-horizontal" role="form" method="post" action="addsenderProvinceListStatus">
				<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<label class="checkbox-inline"> <input type="submit"
								value="发往省" class="btn btn-default"> </label> 
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script src="../js/main.js"></script>
</body>
</html>