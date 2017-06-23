package service;

import java.util.List;

import bean.Conditions;
import bean.Goods;
import bean.GoodsStatus;

public interface IGoodsService {
	void save(Goods goods) throws Exception;

	Goods getGoodsBygoodsId(String goodsId);

	List<Goods> getGoodsByDistrict(String senderCity, String senderDistrict) throws Exception;

	List<GoodsStatus> getGoodsStatusBygoodsId(String goodsId) throws Exception;
}
