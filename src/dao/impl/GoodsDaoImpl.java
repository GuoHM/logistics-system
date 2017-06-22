package dao.impl;

import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import bean.Goods;
import dao.IGoodsDao;

public class GoodsDaoImpl  extends HibernateDaoSupport implements IGoodsDao{

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
	}

