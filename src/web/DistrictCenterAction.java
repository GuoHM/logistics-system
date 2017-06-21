package web;


import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import bean.DistrictCenter;
import bean.Goods;
import bean.ProvinceCenter;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.log4j.Logger;

import service.IDistrictCenterService;


public class DistrictCenterAction extends ActionSupport implements ServletRequestAware {

	private static final long serialVersionUID = 1405926533311347411L;
	ActionContext context = ActionContext.getContext();
	protected HttpServletRequest servletRequest = null;
	Logger logger = Logger.getLogger(AllAction.class);

	private IDistrictCenterService districtCenterService;


	private String senderName;
	private String senderPhone;
	private String senderProvince;
	private String senderCity;
	private String senderAddress;
	private String receiverName;
	private String receiverPhone;
	private String receiverProvince;
	private String receiverCity;
	private String receiverAddress;

	public String addGoods() throws Exception {
		Goods goods=new Goods();

		goods.setSenderName(senderName);
		goods.setSenderPhone(senderPhone);
		goods.setSenderProvince(senderProvince);
		goods.setSenderCity(senderCity);
		goods.setSenderAddress(senderAddress);
		goods.setReceiverName(receiverName);
		goods.setReceiverPhone(receiverPhone);
		goods.setReceiverProvince(receiverProvince);
		goods.setReceiverCity(receiverCity);
		goods.setReceiverAddress(receiverAddress);

		districtCenterService.enroll(goods);
		if(goods!=null){
			return "addSuccess";
		}
		return "addFalse";


	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		// TODO Auto-generated method stub

	}

	/**
	 * @return the context
	 */
	public ActionContext getContext() {
		return context;
	}

	/**
	 * @param context the context to set
	 */
	public void setContext(ActionContext context) {
		this.context = context;
	}

	/**
	 * @return the logger
	 */
	public Logger getLogger() {
		return logger;
	}

	/**
	 * @param logger the logger to set
	 */
	public void setLogger(Logger logger) {
		this.logger = logger;
	}

	/**
	 * @return the districtCenterService
	 */
	public IDistrictCenterService getDistrictCenterService() {
		return districtCenterService;
	}

	/**
	 * @param districtCenterService the districtCenterService to set
	 */
	public void setDistrictCenterService(IDistrictCenterService districtCenterService) {
		this.districtCenterService = districtCenterService;
	}

	
	/**
	 * @return the districtCenterByReceiveDistrictCenter
	 */


	/**
	 * @return the senderName
	 */
	public String getSenderName() {
		return senderName;
	}

	/**
	 * @param senderName the senderName to set
	 */
	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}

	/**
	 * @return the senderPhone
	 */
	public String getSenderPhone() {
		return senderPhone;
	}

	/**
	 * @param senderPhone the senderPhone to set
	 */
	public void setSenderPhone(String senderPhone) {
		this.senderPhone = senderPhone;
	}

	/**
	 * @return the senderProvince
	 */
	public String getSenderProvince() {
		return senderProvince;
	}

	/**
	 * @param senderProvince the senderProvince to set
	 */
	public void setSenderProvince(String senderProvince) {
		this.senderProvince = senderProvince;
	}

	/**
	 * @return the senderCity
	 */
	public String getSenderCity() {
		return senderCity;
	}

	/**
	 * @param senderCity the senderCity to set
	 */
	public void setSenderCity(String senderCity) {
		this.senderCity = senderCity;
	}

	/**
	 * @return the senderAddress
	 */
	public String getSenderAddress() {
		return senderAddress;
	}

	/**
	 * @param senderAddress the senderAddress to set
	 */
	public void setSenderAddress(String senderAddress) {
		this.senderAddress = senderAddress;
	}

	/**
	 * @return the receiverName
	 */
	public String getReceiverName() {
		return receiverName;
	}

	/**
	 * @param receiverName the receiverName to set
	 */
	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}

	/**
	 * @return the receiverPhone
	 */
	public String getReceiverPhone() {
		return receiverPhone;
	}

	/**
	 * @param receiverPhone the receiverPhone to set
	 */
	public void setReceiverPhone(String receiverPhone) {
		this.receiverPhone = receiverPhone;
	}

	/**
	 * @return the receiverProvince
	 */
	public String getReceiverProvince() {
		return receiverProvince;
	}

	/**
	 * @param receiverProvince the receiverProvince to set
	 */
	public void setReceiverProvince(String receiverProvince) {
		this.receiverProvince = receiverProvince;
	}

	/**
	 * @return the receiverCity
	 */
	public String getReceiverCity() {
		return receiverCity;
	}

	/**
	 * @param receiverCity the receiverCity to set
	 */
	public void setReceiverCity(String receiverCity) {
		this.receiverCity = receiverCity;
	}

	/**
	 * @return the receiverAddress
	 */
	public String getReceiverAddress() {
		return receiverAddress;
	}

	/**
	 * @param receiverAddress the receiverAddress to set
	 */
	public void setReceiverAddress(String receiverAddress) {
		this.receiverAddress = receiverAddress;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	/**
	 * @return the servletRequest
	 */
	public HttpServletRequest getServletRequest() {
		return servletRequest;
	}


}