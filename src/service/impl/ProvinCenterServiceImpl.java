package service.impl;

import bean.ProvinceCenter;
import dao.IProvinceCenterDao;
import service.IProvinceCenterService;

public class ProvinCenterServiceImpl implements IProvinceCenterService {
	private IProvinceCenterDao provinceCenterDao;

	public ProvinceCenter getProvinceCenterByIDAndPwd(String login,
			String password) throws Exception {
		// TODO Auto-generated method stub
		boolean isValid = login != null && password != null;
		if (!isValid) {
			return null;
		}
		return provinceCenterDao.getProvinceCenterByIDAndPwd(login, password);
	}

	public IProvinceCenterDao getProvinceCenterDao() {
		return provinceCenterDao;
	}

	public void setProvinceCenterDao(IProvinceCenterDao provinceCenterDao) {
		this.provinceCenterDao = provinceCenterDao;
	}

}
