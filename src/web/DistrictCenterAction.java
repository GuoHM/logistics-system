package web;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import bean.Goods;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.log4j.Logger;
import service.IGoodsService;

public class DistrictCenterAction extends ActionSupport implements ServletRequestAware {
	private static final long serialVersionUID = 1405926533311347411L;
	ActionContext context = ActionContext.getContext();
	protected HttpServletRequest servletRequest = null;
	Logger logger = Logger.getLogger(AllAction.class);
	private IGoodsService goodsService;
	private String searchGoodsId; // 输入的要查询单号
	private String goodsId;
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
	private String senderDistrict;
	private String receiverDistrict;

	public String searchByGoodsID() throws Exception { // 根据单号查询快递单信息
		Goods goods = new Goods();
		goods = goodsService.getGoodsBygoodsId(searchGoodsId);
		if (goods != null) {
			context.getSession().put("getGoodsByID", goods);
			return "searchSuccess";
		} else {
			addActionError("找不到该快递，请确认您的单号信息");
			return INPUT;
		}
	}

	public String modifyGoodsinfo() throws Exception { // 单号查询显示后，进行修改
		Goods goods = new Goods();
		goods.setGoodsId(goodsId);
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
		goods.setSenderDistrict(senderDistrict);
		goods.setReceiverDistrict(receiverDistrict);
		// goods.setDistrictCenterBySendDestrictCenter(districtCenterBySendDestrictCenter);
		goodsService.save(goods);
		if (goods != null) {
			return "modifyGoodsinfoSuccess";
		} else {
			return "modifyGoodsinfoFalse";
		}

	}
	// public String printGoodsinfo() throws Exception { //打印快递单信息
	// Goods goods = new Goods();
	// goods.setGoodsId((String)context.getSession().get(searchGoodsId));
	// goods.setSenderName(senderName);
	// goods.setSenderPhone(senderPhone);
	// goods.setSenderProvince(senderProvince);
	// goods.setSenderCity(senderCity);
	// goods.setSenderAddress(senderAddress);
	// goods.setReceiverName(receiverName);
	// goods.setReceiverPhone(receiverPhone);
	// goods.setReceiverProvince(receiverProvince);
	// goods.setReceiverCity(receiverCity);
	// goods.setReceiverAddress(receiverAddress);
	//
	// }

	/**
	 * @return the context
	 */
	public ActionContext getContext() {
		return context;
	}

	/**
	 * @param context
	 *            the context to set
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
	 * @param logger
	 *            the logger to set
	 */
	public void setLogger(Logger logger) {
		this.logger = logger;
	}

	/**
	 * @return the goodsService
	 */
	public IGoodsService getGoodsService() {
		return goodsService;
	}

	/**
	 * @param goodsService
	 *            the goodsService to set
	 */
	public void setGoodsService(IGoodsService goodsService) {
		this.goodsService = goodsService;
	}

	/**
	 * @return the searchGoodsId
	 */
	public String getSearchGoodsId() {
		return searchGoodsId;
	}

	/**
	 * @param searchGoodsId
	 *            the searchGoodsId to set
	 */
	public void setSearchGoodsId(String searchGoodsId) {
		this.searchGoodsId = searchGoodsId;
	}

	/**
	 * @return the goodsId
	 */
	public String getGoodsId() {
		return goodsId;
	}

	/**
	 * @param goodsId
	 *            the goodsId to set
	 */
	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}

	/**
	 * @return the senderName
	 */
	public String getSenderName() {
		return senderName;
	}

	/**
	 * @param senderName
	 *            the senderName to set
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
	 * @param senderPhone
	 *            the senderPhone to set
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
	 * @param senderProvince
	 *            the senderProvince to set
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
	 * @param senderCity
	 *            the senderCity to set
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
	 * @param senderAddress
	 *            the senderAddress to set
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
	 * @param receiverName
	 *            the receiverName to set
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
	 * @param receiverPhone
	 *            the receiverPhone to set
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
	 * @param receiverProvince
	 *            the receiverProvince to set
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
	 * @param receiverCity
	 *            the receiverCity to set
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
	 * @param receiverAddress
	 *            the receiverAddress to set
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

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		// TODO Auto-generated method stub

	}

	/**
	 * @return the senderDistrict
	 */
	public String getSenderDistrict() {
		return senderDistrict;
	}

	/**
	 * @param senderDistrict
	 *            the senderDistrict to set
	 */
	public void setSenderDistrict(String senderDistrict) {
		this.senderDistrict = senderDistrict;
	}

	/**
	 * @return the receiverDistrict
	 */
	public String getReceiverDistrict() {
		return receiverDistrict;
	}

	/**
	 * @param receiverDistrict
	 *            the receiverDistrict to set
	 */
	public void setReceiverDistrict(String receiverDistrict) {
		this.receiverDistrict = receiverDistrict;
	}

}
