package service;

import java.util.List;

import bean.ProvinceCenter;
import bean.Transportation;
public interface IProvinceCenterService {
	ProvinceCenter getProvinceCenterByIDAndPwd(String id,String pwd) throws Exception;
	 void save(ProvinceCenter user) throws Exception;
	 ProvinceCenter getProvinceCenterByProvinceName(String ProvinceName) throws Exception;
	 List<Transportation> getTransportationlistByDD(String senderProvince,String receiverProvince);
}
