<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form class="form-horizontal" role="form" method="post"
	action="addGoods" id="addGoods">
	<h3>收件人信息</h3>
	<hr style="border-top: 1px ridge rgba(6, 3, 9, 0.47)">
	<div class="form-group">
		<label class="col-sm-4 control-label">收件人姓名</label>
		<div class="col-sm-7">
			<input type="text" class="form-control" name="receiverName"
				required="required">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-4 control-label">收件人电话</label>
		<div class="col-sm-7">
			<input type="text" class="form-control" name="receiverPhone"
				required="required">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-4 control-label">收件人省份</label>
		<div>
			<label class="checkbox-inline"> <select class="form-control"
				id="school" name="receiverProvince">
					<jsp:include page="../ToolsPage/provinceList.jsp"></jsp:include>
			</select> </label>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-4 control-label">收件人城市</label>
		<div class="col-sm-7">
			<input type="text" class="form-control" name="receiverCity"
				required="required">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-4 control-label">收件人区县</label>
		<div class="col-sm-7">
			<input type="text" class="form-control" name="receiverDistrict"
				required="required">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-4 control-label">收件人地址</label>
		<div class="col-sm-7">
			<input type="text" class="form-control" name="receiverAddress"
				required="required">
		</div>
	</div>
	<h3>寄件人信息</h3>
	<hr style="border-top: 1px ridge rgba(6, 3, 9, 0.47)">
	<div class="form-group">
		<label class="col-sm-4 control-label">寄件人姓名</label>
		<div class="col-sm-7">
			<input type="text" class="form-control" name="senderName"
				required="required">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-4 control-label">寄件人电话</label>
		<div class="col-sm-7">
			<input type="text" class="form-control" name="senderPhone"
				required="required">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-4 control-label">寄件人省份</label>
		<div>
			<label class="checkbox-inline"> <select class="form-control"
				id="school" name="senderProvince">
					<jsp:include page="../ToolsPage/provinceList.jsp"></jsp:include>
			</select> </label>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-4 control-label">寄件人城市</label>
		<div class="col-sm-7">
			<input type="text" class="form-control" name="senderCity"
				required="required">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-4 control-label">寄件人区县</label>
		<div class="col-sm-7">
			<input type="text" class="form-control" name="senderDistrict"
				required="required">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-4 control-label">寄件人地址</label>
		<div class="col-sm-7">
			<input type="text" class="form-control" name="senderAddress"
				required="required">
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