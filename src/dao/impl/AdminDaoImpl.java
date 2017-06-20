package dao.impl;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import bean.Admin;
import dao.IAdminDao;
public class AdminDaoImpl extends HibernateDaoSupport implements IAdminDao {    //根据输入账号密码访问数据库，查看用户是否存在
	 public Adminuser getByLoginAndPassword(String login, String password) throws Exception {
	        // TODO Auto-generated method stub
	        String hql = "from Adminuser where adminId=? and password=?";
	        Session session = null;
	        Adminuser user = null;
	        try {
	            session = getSession();
	            user = (Adminuser) session.createQuery(hql).setParameter(0, login).setParameter(1, password)
	                    .uniqueResult();
	        } finally {
	            releaseSession(session);
	        }
	        return user;
	    }
}