package dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import bean.Conditions;
import bean.Goods;
import bean.GoodsStatus;
import bean.GoodsStatusId;
import dao.IGoodsDao;

public class GoodsDaoImpl extends HibernateDaoSupport implements IGoodsDao {

	@Override
	public void save(Goods goods) throws Exception {
		getHibernateTemplate().saveOrUpdate(goods);
	}

	@Override
	public Goods getGoodsBygoodsId(String goodsId) {
		String hql = "from Goods where goodsId=?";
		Session session = null;
		Goods goods = null;
		try {
			session = getSession();
			goods = (Goods) session.createQuery(hql).setParameter(0, goodsId).uniqueResult();
		} finally {
			releaseSession(session);
		}
		return goods;
	}

	@SuppressWarnings("unchecked")
	public List<Goods> getGoodsByDistrict(String senderCity, String senderDistrict) throws Exception {
		String hql = "from Goods where senderCity=? and senderDistrict=?";
		Session session = null;
		List<Goods> list = null;
		try {
			session = getSession();
			list = (List<Goods>) session.createQuery(hql).setParameter(0, senderCity).setParameter(1, senderDistrict)
					.list();
		} finally {
			releaseSession(session);
		}
		return list;
	}

	@SuppressWarnings("unchecked")
	public List<GoodsStatusId> getGoodsStatusBygoodsId(String goodsId) throws Exception {//根据账单号获取状态链表
		String hql = "from GoodsStatus where goodsId=? ";
		Session session = null;
		List<GoodsStatusId> list = null;
		try {
			session = getSession();
			list = (List<GoodsStatusId>) session.createQuery(hql).setParameter(0, goodsId).list();
		} finally {
			releaseSession(session);
		}
		return list;
	}

	
	@Override
	public void save(Conditions conditions) throws Exception {
		getHibernateTemplate().saveOrUpdate(conditions);
		
	}
}
