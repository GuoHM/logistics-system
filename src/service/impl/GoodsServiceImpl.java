package service.impl;

import bean.Goods;
import dao.IGoodsDao;
import service.IGoodsService;

public class GoodsServiceImpl implements IGoodsService{
	private IGoodsDao goodsDao;
	@Override
	public void save(Goods goods) throws Exception {
		if(goods!=null){
			goodsDao.save(goods);
		}
	
	}
	public Goods getGoodsBygoodsId(String goodsId) {  //根据单号查询单号信息
		// TODO Auto-generated method stub
		Goods goods=goodsDao.getGoodsBygoodsId(goodsId);
		if(goods!=null){
			return goods;
		}
		else
			return null;
	}

	/**
	 * @return the goodsDao
	 */
	public IGoodsDao getGoodsDao() {
		return goodsDao;
	}
	/**
	 * @param goodsDao the goodsDao to set
	 */
	public void setGoodsDao(IGoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}

}
