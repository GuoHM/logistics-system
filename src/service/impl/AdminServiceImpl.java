package service.impl;

import bean.Admin;
import dao.IAdminDao;
import service.IAdminService;

public class AdminServiceImpl implements IAdminService {
	private IAdminDao adminDao;

	public Admin getAdminByLoginAndPassword(String login, String password)
			throws Exception {
		// TODO Auto-generated method stub
		boolean isValid = login != null && password != null;
		if (!isValid) {
			return null;
		}
		return adminDao.getAdminByIDAndPwd(login, password);
	}

	public IAdminDao getAdminDao() {
		return adminDao;
	}

	public void setAdminDao(IAdminDao adminDao) {
		this.adminDao = adminDao;
	}

}
