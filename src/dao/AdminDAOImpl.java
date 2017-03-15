package dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import po.Admin;

import po.User;

public class AdminDAOImpl implements AdminDAO {
	/*
	 * 用来验证admin
	 * 
	 * @see dao.AdminDAO#findByAdminID(java.lang.String)
	 */
	public Admin findByAdminID(String AdminID) {
		Session session = HibernateSessionFactory.getSession();
		Admin admin = (Admin) session.get(Admin.class, AdminID);
		HibernateSessionFactory.closeSession();
		return admin;
	}

	/*
	 * 删除admin
	 * 
	 * @see dao.AdminDAO#deleteAdmin(java.lang.String)
	 */
	public void deleteAdmin(String aid) {
		Session session = HibernateSessionFactory.getSession();// 获得Session对象
		Admin admin = (Admin) session.get(Admin.class, aid);
		Transaction transaction = null;// 声明一个事务对象
		try {
			transaction = session.beginTransaction();// 开启事务
			session.delete(admin);
			transaction.commit();// 提交事务
		} catch (Exception ex) {
			ex.printStackTrace();
			transaction.rollback();// 事务回滚
		}
		HibernateSessionFactory.closeSession();// 关闭Session对象
	}

	/*
	 * 将user变为admin
	 * 
	 * @see dao.AdminDAO#addAdmin(java.lang.String)
	 */
	public void addAdmin(String uid) {
		Session session = HibernateSessionFactory.getSession();// 获得Session对象
		User user = (User) session.get(User.class, uid);
		Admin admin = new Admin(uid, user.getName(), user.getPassword(),
				user.getTelephone(), "admin");
		Transaction transaction = null;// 声明一个事务对象
		try {
			transaction = session.beginTransaction();// 开启事务
			session.save(admin);
			transaction.commit();// 提交事务
		} catch (Exception ex) {
			ex.printStackTrace();
			transaction.rollback();// 事务回滚
		}
		HibernateSessionFactory.closeSession();// 关闭Session对象
	}

}
