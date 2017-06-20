package service;
import bean.ProvinceCenter;
public interface IProvinceCenterService {
	ProvinceCenter getProvinceCenterByIDAndPwd(String id,String pwd) throws Exception;
}
