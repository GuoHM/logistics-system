<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>运输管理</title>
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
					<form role="form" action="">
						<div class="form-group">
							<label class="col-sm-2 control-label">出发地:</label>
							<div>
								<label class="checkbox-inline"> <select
									class="form-control" id="school" name="depature"
									id="receiverProvince">
										<jsp:include page="../ToolsPage/provinceList.jsp"></jsp:include>
								</select> </label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">目的地:</label>
							<div>
								<label class="checkbox-inline"> <select
									class="form-control" id="school" name="destination"
									id="receiverProvince">
										<jsp:include page="../ToolsPage/provinceList.jsp"></jsp:include>
								</select> </label>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-1 col-sm-10">
								<label class="checkbox-inline"> <input type="submit"
									value="确定" class="btn btn-default"> </label>
							</div>
						</div>
					</form>

					<jsp:include page="../ToolsPage/listTransportation.jsp"></jsp:include>
				</div>
				</form>
			</div>
		</div>
	</div>

	<script src="../js/main.js"></script>
</body>
</html>