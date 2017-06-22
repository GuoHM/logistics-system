package service;

import bean.Goods;

public interface IGoodsService {
	 void save(Goods goods) throws Exception;
	 Goods getGoodsBygoodsId(String goodsId);
}
