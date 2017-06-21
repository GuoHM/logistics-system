package dao;

import bean.Admin;

public interface IAdminDao {
Admin getAdminByIDAndPwd(String id,String pwd) throws Exception;
void save(Admin user) throws Exception;
}
