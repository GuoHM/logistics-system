$(document).ready(function() {
    $('#modifyPwd').bootstrapValidator({
	feedbackIcons: {
	    valid: 'glyphicon glyphicon-ok',
	    invalid: 'glyphicon glyphicon-remove',
	    validating: 'glyphicon glyphicon-refresh'
	},
	fields: {
	    newpassword: {
		validators: {
		    notEmpty: {
			message: '新密码不能为空'
		    },
		    identical: {//鐩稿悓
			field: 'newpassword', //闇�杩涜姣旇緝鐨刬nput name鍊�
			message: '两次密码不一致'
		    },
		    regexp: {
			regexp: /^[a-zA-Z0-9_\.]+$/,
			message: '只能由字母，数字，下划线组成'
		    }
		}
	    },
	    passwordrepeat: {
		
		validators: {
		    notEmpty: {
			message: '新密码不能为空'
		    },
		    identical: {//鐩稿悓
			field: 'newpassword',
			message: '两次密码不一致'
		    },
		    regexp: {//鍖归厤瑙勫垯
			regexp: /^[a-zA-Z0-9_\.]+$/,
			message: '只能由字母，数字，下划线组成'
		    }
		}
	    },
	}
    })
    .on('success.form.bv', function(e) {//鐐瑰嚮鎻愪氦涔嬪悗
	// Prevent form submission
	e.preventDefault();

	// Get the form instance
	var $form = $(e.target);

	// Get the BootstrapValidator instance
	var bv = $form.data('bootstrapValidator');

	// Use Ajax to submit form data 鎻愪氦鑷砯orm鏍囩涓殑action锛宺esult鑷畾涔�
	$.post($form.attr('action'), $form.serialize(), function(result) {
//	    do something...
	});
    });

});