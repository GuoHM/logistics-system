package service.impl;

import java.util.List;

import bean.Conditions;
import bean.Goods;
import bean.GoodsStatus;
import bean.GoodsStatusId;
import dao.IGoodsDao;
import service.IGoodsService;

public class GoodsServiceImpl implements IGoodsService {
	private IGoodsDao goodsDao;


	@Override
	public void save(Goods goods) throws Exception {
		if (goods != null) {
			goodsDao.save(goods);
		}

	}

	public Goods getGoodsBygoodsId(String goodsId) { // 根据单号查询单号信息
		// TODO Auto-generated method stub
		Goods goods = goodsDao.getGoodsBygoodsId(goodsId);
		if (goods != null) {
			return goods;
		} else
			return null;
	}

	public List<Goods> getGoodsByDistrict(String district,String city, String province) throws Exception {//根据城市和区县营业点筛选出所有订单链表，包含已成交订单
		if (district != null && city != null&& province != null) {
			return goodsDao.getGoodsByDistrict(district, city,province);
		} else
			return null;
	}

	@Override
	public List<Goods> getGoodsByreceiverDistrict(String district, String city, String province) throws Exception {
		if (district != null && city != null&& province != null) {
			return goodsDao.getGoodsByreceiverDistrict(district, city, province);
		} else
			return null;
	}
	public List<Goods> getGoodsByProvince(String province) throws Exception {//根据省筛选出所有订单链表，包含已成交订单
		if (province != null) {
			return goodsDao.getGoodsByProvince(province);
		} else
			return null;
	}

	@Override
	public List<Goods> getGoodsByreceiverProvince(String province) throws Exception {
		if (province != null) {
			return goodsDao.getGoodsByreceiverProvince(province);
		} else
			return null;
	}

	// public List<GoodsStatus> getGoodsStatusBygoodsId(String goodsId) throws
	// Exception {
	// List<GoodsStatus> liststatus=null;
	// Goods goods=new Goods();
	// Conditions conditions=new Conditions();
	// goodsDao.get
	// if(goodsId!=null){
	// goods=goodsDao.getGoodsBygoodsId(goodsId);
	// conditions=goodsDao.getdescriptionByconditionID(conditionID);
	// return status;
	// }
	// else
	// return null;
	// }
	/**
	 * @return the goodsDao
	 */
	public IGoodsDao getGoodsDao() {
		return goodsDao;
	}

	/**
	 * @param goodsDao
	 *            the goodsDao to set
	 */
	public void setGoodsDao(IGoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}




}
