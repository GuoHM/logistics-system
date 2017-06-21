package service.impl;

import bean.DistrictCenter;
import bean.Goods;
import dao.IDistrictCenterDao;
import dao.IGoodsDao;
import service.IDistrictCenterService;

public class DistrictCenterServiceImpl implements IDistrictCenterService {
	private IDistrictCenterDao districtCenterDao;
	private IGoodsDao goodsDao;
	public DistrictCenter getDistrictCenterByIDAndPwd(String login,
			String password) throws Exception {
		boolean isValid = login != null && password != null;
		if (!isValid) {
			return null;
		}
		return districtCenterDao.getDistrictCenterByIDAndPwd(login, password);
	}
	public void save(DistrictCenter user) throws Exception {
		if(user!=null){
			districtCenterDao.save(user);
		}

	}

	@Override
	public void enroll(Goods goods) throws Exception {
		if (goods!= null) {
			goodsDao.save(goods);
		}
	}
	public IDistrictCenterDao getDistrictCenterDao() {
		return districtCenterDao;
	}

	public void setDistrictCenterDao(IDistrictCenterDao districtCenterDao) {
		this.districtCenterDao = districtCenterDao;
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
