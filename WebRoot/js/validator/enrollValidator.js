$(document).ready(function() {
    $('#enroll').bootstrapValidator({
	feedbackIcons: {
	    valid: 'glyphicon glyphicon-ok',
	    invalid: 'glyphicon glyphicon-remove',
	    validating: 'glyphicon glyphicon-refresh'
	},
	fields: {
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
	    id1: {
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
	    id2: {
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
	    teacherphone: {
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
	    description: {
		validators: {
		    stringLength: {
			min: 0,
			max: 100,
			message: '请不要超过100字'
		    },
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