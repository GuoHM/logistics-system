package dao;

import java.util.List;

import bean.Conditions;
import bean.Goods;
import bean.GoodsStatusId;

public interface IGoodsDao {
	void save(Goods goods) throws Exception;

	void save(Conditions conditions) throws Exception;

	Goods getGoodsBygoodsId(String goodsId);

	List<Goods> getGoodsByDistrict(String senderCity, String senderDistrict) throws Exception;


}
