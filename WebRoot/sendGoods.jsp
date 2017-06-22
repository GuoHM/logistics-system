<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    String goodsId = (String) session.getAttribute("goodsID");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>修改密码</title>
<meta name="viewport"
    content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body onload="today()">
    <jsp:include page="/ToolsPage/header.jsp"></jsp:include>
    <div class="maincontent">
        <div class="container">
            <div class="row clearfix">
                <div class="col-xs-5 column">
                <h2><%=goodsId %></h2>
                    <jsp:include page="/ToolsPage/sendGoodsForm.jsp"></jsp:include>
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