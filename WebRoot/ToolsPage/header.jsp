<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>        </button>
        <a class="navbar-brand" href="#" name="date"></a>
    </div>
    <div class="collapse navbar-collapse menubar-left">
        <ul class="nav navbar-nav">
            <li><a href="index.jsp"><span class="glyphicon glyphicon-home">首页</span></a></li>
            <li><a href="index.jsp"><span class="glyphicon glyphicon-envelope">寄快递</span></a></li>
            <li><a href="news.jsp"><span class="glyphicon glyphicon glyphicon-lock">网点查询</span></a></li>
            <li><a href="info.jsp"><span class="glyphicon glyphicon-book">运费查询</span></a></li>
            <li><a href="info.jsp"><span class="glyphicon glyphicon-th">关于我们</span></a></li>
            <li><a href="warning.jsp"><span class="glyphicon glyphicon-star">注意事项</span></a></li>
        </ul>
    </div><!-- /.nav-collapse -->
    <div class="btn-group menubar-right">
        <button name="login" type="button" class="btn btn-default">
            <a href="login.jsp" style="color:black;"><span class="glyphicon glyphicon-user">登录</span></a>
        </button>
    </div>
</div>