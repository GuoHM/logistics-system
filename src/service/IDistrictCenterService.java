package service;

import bean.DistrictCenter;
import bean.Goods;

public interface IDistrictCenterService {
	DistrictCenter getDistrictCenterByIDAndPwd(String id,String pwd) throws Exception;
	 void save(DistrictCenter user) throws Exception;
	 void enroll(Goods goods) throws Exception;
}
