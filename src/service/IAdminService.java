package service;

import bean.Admin;

public interface IAdminService {
	Admin getAdminByLoginAndPassword(String login, String password) throws Exception;

	void save(Admin user) throws Exception;
}
