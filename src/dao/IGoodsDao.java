package dao;

import bean.Goods;

public interface IGoodsDao {
	void save(Goods goods) throws Exception;
	Goods getGoodsBygoodsId(int goodsId);
}
