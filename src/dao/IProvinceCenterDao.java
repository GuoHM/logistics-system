package dao;
import bean.ProvinceCenter;
public interface IProvinceCenterDao {
	ProvinceCenter getProvinceCenterByIDAndPwd(String id,String pwd) throws Exception;
	void save(ProvinceCenter user) throws Exception;
}
