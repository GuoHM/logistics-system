package service;

import bean.ProvinceCenter;
public interface IProvinceCenterService {
	ProvinceCenter getProvinceCenterByIDAndPwd(String id,String pwd) throws Exception;
	 void save(ProvinceCenter user) throws Exception;
	 ProvinceCenter getProvinceCenterByProvinceName(String ProvinceName) throws Exception;
}
