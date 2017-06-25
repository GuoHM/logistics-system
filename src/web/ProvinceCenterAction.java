package web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;

import bean.Goods;
import bean.GoodsStatus;
import bean.GoodsStatusId;
import bean.ProvinceCenter;
import bean.Transportation;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.log4j.Logger;

import service.IConditionsService;
import service.IGoodsService;
import service.IGoodsStatusService;
import service.IProvinceCenterService;

public class ProvinceCenterAction extends ActionSupport implements ServletRequestAware {
	private static final long serialVersionUID = 1405926533311347411L;
	ActionContext context = ActionContext.getContext();
	protected HttpServletRequest servletRequest = null;
	Logger logger = Logger.getLogger(AllAction.class);
	private IGoodsService goodsService;
	private IGoodsStatusService goodsStatusService;
	private IConditionsService conditionsService;
	private IProvinceCenterService provinceCenterService;
	/**
	 * @return the provinceCenterService
	 */
	public IProvinceCenterService getProvinceCenterService() {
		return provinceCenterService;
	}

	/**
	 * @param provinceCenterService the provinceCenterService to set
	 */
	public void setProvinceCenterService(IProvinceCenterService provinceCenterService) {
		this.provinceCenterService = provinceCenterService;
	}

	

	@SuppressWarnings({ "null", "unused" })
	public String getGoodsByProvince() throws Exception {// 获取当前省未发往其他省的快递
		int sum=0;
		List<Goods> list = null;
		List<Goods> list2 = new ArrayList<Goods>();//list2存放本省的未发过去的订单
		List<Transportation> list3 = new ArrayList<Transportation>();
		ProvinceCenter province = (ProvinceCenter) context.getSession().get("login");
		list=goodsService.getGoodsByProvince(province.getProvince());
		if (list != null) {
			for (int i = 0; i < list.size(); i++) {
				Goods goods = list.get(i);
				if (goods.getProvinceCenterBySendProvinceCenter() != null&&goods.getProvinceCenterByReceiveProvinceCenter()==null) {
					list2.add(list.get(i));
				}
			}
		}
		String a[][]=new String[list2.size()][2];
		for(int i=0;i<list2.size();i++){
			String provinceName=list2.get(i).getReceiverProvince();
			for(int j=i+1;j<list2.size();j++){
				if(list2.get(j)==list2.get(i)){
					list2.remove(j);
					sum++;
				}
			}
			a[i][0]=provinceName;
			a[i][1]=sum+"";
			list3=provinceCenterService.getTransportationlistByDD(province.getProvince(), provinceName);
		}
		if (a != null&&list3!=null) {
			context.getSession().put("senderProvincearray", a);
			context.getSession().put("transportationList", list3);
			return "getGoodsBysenderProvinceSuccess";
		} else {
			return "getGoodsBysenderProvinceFalse";
		}
	}

	@SuppressWarnings("null")
	public String addsenderProvinceListStatus() throws Exception {// 发往本省时，将商品链表都加上状态信息
		int j = 0;
		List<Goods> list = null;
		List<Goods> list2 = new ArrayList<Goods>();
		ProvinceCenter province = (ProvinceCenter) context.getSession().get("login");
		list=goodsService.getGoodsByProvince(province.getProvince());
		if (list != null) {
			for (int i = 0; i < list.size(); i++) {
				Goods goods = list.get(i);
				if (goods.getProvinceCenterBySendProvinceCenter() != null&&goods.getProvinceCenterByReceiveProvinceCenter()==null) {
					list2.add(list.get(i));
				}
			}
		}
		for (j = 0; j < list2.size(); j++) {
			Goods goods = list2.get(j);
			GoodsStatusId goodsStatusId = new GoodsStatusId();
			goodsStatusId.setGoodsId(goods.getGoodsId());
			goodsStatusId.setConditionId("4");
			GoodsStatus goodsStatus = new GoodsStatus();
			goodsStatus.setId(goodsStatusId);
			ProvinceCenter provinceCenter = provinceCenterService
					.getProvinceCenterByProvinceName(goods.getReceiverProvince());
			goods.setProvinceCenterByReceiveProvinceCenter(provinceCenter);
			goodsService.save(goods);
			goods = goodsService.getGoodsBygoodsId(goods.getGoodsId());
			goodsStatus.setGoods(goods);
			goodsStatus.setConditions(conditionsService.getConditionsByConditonsId("4"));
			goodsStatusService.save(goodsStatus);
		}
		if (j == list2.size()) {
			return "saveprovinceListStatusSuccess";
		} else
			return "saveprovinceListStatusFalse";
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
	 * @return the goodsService
	 */
	public IGoodsService getGoodsService() {
		return goodsService;
	}

	/**
	 * @param goodsService the goodsService to set
	 */
	public void setGoodsService(IGoodsService goodsService) {
		this.goodsService = goodsService;
	}

	/**
	 * @return the goodsStatusService
	 */
	public IGoodsStatusService getGoodsStatusService() {
		return goodsStatusService;
	}

	/**
	 * @param goodsStatusService the goodsStatusService to set
	 */
	public void setGoodsStatusService(IGoodsStatusService goodsStatusService) {
		this.goodsStatusService = goodsStatusService;
	}

	/**
	 * @return the conditionsService
	 */
	public IConditionsService getConditionsService() {
		return conditionsService;
	}

	/**
	 * @param conditionsService the conditionsService to set
	 */
	public void setConditionsService(IConditionsService conditionsService) {
		this.conditionsService = conditionsService;
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