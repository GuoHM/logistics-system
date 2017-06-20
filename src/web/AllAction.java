package web;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import bean.Admin;
import bean.DistrictCenter;
import bean.ProvinceCenter;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.log4j.Logger;

import service.IAdminService;
import service.IDistrictCenterService;
import service.IProvinceCenterService;

public class AllAction extends ActionSupport implements ServletRequestAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1405926533311347411L;
	ActionContext context = ActionContext.getContext();
	protected HttpServletRequest servletRequest = null;
	Logger logger = Logger.getLogger(AllAction.class);
	private IDistrictCenterService districtCenterService;
	private IProvinceCenterService provinceCenterService;
	private IAdminService adminService;

	private String userid;
	private String password;
	private int type;

	public String login() throws Exception {
		// LoginInfo login = null;
		try {
			switch (type) {
			/**
			 * districtCenter login
			 */
			case 1: {
				DistrictCenter districtCenter = districtCenterService
						.getDistrictCenterByIDAndPwd(userid, password);
				if (districtCenter == null) {
					addActionError("用户名密码错误");
					return INPUT;
				} else {
					context.getSession().put("login", districtCenter);
					context.getSession().put("type", "1");
					return "districtCenter";
				}
			}
			/**
			 * provinceCenter login
			 */
			case 2: {
				ProvinceCenter provinceCenter = provinceCenterService
						.getProvinceCenterByIDAndPwd(userid, password);
				if (provinceCenter == null) {
					addActionError("用户名密码错误");
					return INPUT;
				} else {
					context.getSession().put("login", provinceCenter);
					context.getSession().put("type", "2");
					return "provinceCenter";
				}
			}
			/**
			 * admin login
			 */
			case 3: {
				Admin admin = adminService.getAdminByLoginAndPassword(userid,
						password);
				if (admin == null) {
					addActionError("用户名密码错误");
					return INPUT;
				} else {
					context.getSession().put("login", admin);
					context.getSession().put("type", "3");
					return "admin";
				}
			}
			default:
				return INPUT;
			}
		} catch (Exception e) {
			logger.error(e);
		}
		return INPUT;
	}

	public ActionContext getContext() {
		return context;
	}

	public void setContext(ActionContext context) {
		this.context = context;
	}

	public HttpServletRequest getServletRequest() {
		return servletRequest;
	}

	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;
	}

	public Logger getLogger() {
		return logger;
	}

	public void setLogger(Logger logger) {
		this.logger = logger;
	}

	public IDistrictCenterService getDistrictCenterService() {
		return districtCenterService;
	}

	public void setDistrictCenterService(
			IDistrictCenterService districtCenterService) {
		this.districtCenterService = districtCenterService;
	}

	public IProvinceCenterService getProvinceCenterService() {
		return provinceCenterService;
	}

	public void setProvinceCenterService(
			IProvinceCenterService provinceCenterService) {
		this.provinceCenterService = provinceCenterService;
	}

	public IAdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(IAdminService adminService) {
		this.adminService = adminService;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
