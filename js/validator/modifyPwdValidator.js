$(document).ready(function() {
    $('#modifyPwd').bootstrapValidator({
	feedbackIcons: {
	    valid: 'glyphicon glyphicon-ok',
	    invalid: 'glyphicon glyphicon-remove',
	    validating: 'glyphicon glyphicon-refresh'
	},
	fields: {
	    passwordnew: {
		message:'密码无效',
		validators: {
		    notEmpty: {
			message: '密码不能为空'
		    },
		    stringLength: {
			min: 6,
			max: 30,
			message: '密码长度必须在6到30之间'
		    },
		    identical: {//相同
			field: 'passwordnew', //需要进行比较的input name值
			message: '两次密码不一致'
		    },
		    regexp: {
			regexp: /^[a-zA-Z0-9_\.]+$/,
			message: '只能由字母，数字，下划线组成'
		    }
		}
	    },
	    passwordrepeat: {
		message: '密码无效',
		validators: {
		    notEmpty: {
			message: '用户名不能为空'
		    },
		    stringLength: {
			min: 6,
			max: 30,
			message: '密码长度必须在6到30之间'
		    },
		    identical: {//相同
			field: 'passwordnew',
			message: '两次密码不一致'
		    },
		    regexp: {//匹配规则
			regexp: /^[a-zA-Z0-9_\.]+$/,
			message: '只能由字母，数字，下划线组成'
		    }
		}
	    },
	}
    })
    .on('success.form.bv', function(e) {//点击提交之后
	// Prevent form submission
	e.preventDefault();

	// Get the form instance
	var $form = $(e.target);

	// Get the BootstrapValidator instance
	var bv = $form.data('bootstrapValidator');

	// Use Ajax to submit form data 提交至form标签中的action，result自定义
	$.post($form.attr('action'), $form.serialize(), function(result) {
//	    do something...
	});
    });

});