package service.impl;

import bean.DistrictCenter;
import dao.IDistrictCenterDao;
import service.IDistrictCenterService;

public class DistrictCenterServiceImpl implements IDistrictCenterService {
	private IDistrictCenterDao districtCenterDao;

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

	public IDistrictCenterDao getDistrictCenterDao() {
		return districtCenterDao;
	}

	public void setDistrictCenterDao(IDistrictCenterDao districtCenterDao) {
		this.districtCenterDao = districtCenterDao;
	}



}
