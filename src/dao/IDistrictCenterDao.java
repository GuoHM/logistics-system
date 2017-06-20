package dao;
import bean.DistrictCenter;
public interface IDistrictCenterDao {
	DistrictCenter getDistrictCenterByIDAndPwd(String id,String pwd) throws Exception;
}
