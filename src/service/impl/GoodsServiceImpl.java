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
