<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<form class="form-horizontal" role="form" method="post" action="modifyPwd">
	<s:actionerror />
	<s:actionmessage />
	<div class="form-group">
		<label class="col-sm-4 control-label">请输入旧密码</label>
		<div class="col-sm-7">
			<input type="password" class="form-control" name="password" placeholder="请输入旧密码"
				required="required">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-4 control-label">请输入新密码</label>
		<div class="col-sm-7">
			<input type="password" class="form-control" name="newpassword" placeholder="请输入新密码"
				required="required">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-4 control-label">请重复新密码</label>
		<div class="col-sm-7">
			<input type="password" class="form-control" name="passwordrepeat" placeholder="请重复新密码"
				required="required">
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<label class="checkbox-inline">
				<input type="submit" value="提交">
			</label>
			<label class="checkbox-inline">
				<input type="reset" value="重置">
			</label>
		</div>
	</div>
</form>