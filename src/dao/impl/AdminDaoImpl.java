package dao.impl;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import bean.Admin;
import dao.IAdminDao;
public class AdminDaoImpl extends HibernateDaoSupport implements IAdminDao {    //���������˺�����������ݿ⣬�鿴�û��Ƿ����
	 public Admin getAdminByIDAndPwd(String login, String password) throws Exception {
	        // TODO Auto-generated method stub
	        String hql = "from Admin where adminId=? and pwd=?";
	        Session session = null;
	        Admin user = null;
	        try {
	            session = getSession();
	            user = (Admin) session.createQuery(hql).setParameter(0, login).setParameter(1, password)
	                    .uniqueResult();
	        } finally {
	            releaseSession(session);
	        }
	        return user;
	    }
}