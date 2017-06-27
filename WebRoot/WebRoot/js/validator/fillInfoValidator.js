$(document).ready(function() {
    $('#fillinfo').bootstrapValidator({
	feedbackIcons: {
	    valid: 'glyphicon glyphicon-ok',
	    invalid: 'glyphicon glyphicon-remove',
	    validating: 'glyphicon glyphicon-refresh'
	},
	fields: {
	    username: {
		validators: {
		    stringLength: {
			min: 6,
			max: 15,
			message: '用户名长度必须在6到15之间'
		    },
		    regexp: {
			regexp: /^[a-zA-Z0-9_\.]+$/,
			message: '用户名由数字字母下划线和.组成'
		    }
		}
	    },
	    phone: {
		message: '手机号不合法',
		validators: {
		    stringLength: {
			min: 11,
			max: 11,
			message: '请输入11位手机号码'
		    },
		    regexp: {
			regexp: /^1[3|5|8]{1}[0-9]{9}$/,
			message: '请输入正确的手机号码'
		    }
		}
	    },
	    id: {
		validators: {
		    stringLength: {
			min: 15,
			max: 18,
			message: '身份证长度不合法'
		    },
		    regexp: {
			regexp: /^\d{15}|\d{}18$/,
			message: '请输入正确的身份证'
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