package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import po.User;
import util.Page;

public class UserDAOImpl implements UserDAO {

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.UserDAO#passexamine(java.lang.String)
	 */
	public void passexamine(String uid) {
		Session session = HibernateSessionFactory.getSession();// 获得Session对象
		Transaction transaction = null;// 声明一个事务对象
		try {
			transaction = session.beginTransaction();// 开启事务
			User user = (User) session.get(User.class, uid);
			user.setIschecked("yes");
			session.save(user);// 更新
			transaction.commit();// 提交事务
		} catch (Exception ex) {
			ex.printStackTrace();
			transaction.rollback();// 事务回滚
		}
		HibernateSessionFactory.closeSession();// 关闭Session对象

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.UserDAO#refuseexamine(java.lang.String)
	 */
	public void refuseexamine(String uid) {
		Session session = HibernateSessionFactory.getSession();// 获得Session对象
		Transaction transaction = null;// 声明一个事务对象
		try {
			transaction = session.beginTransaction();// 开启事务
			User user = (User) session.get(User.class, uid);
			user.setIschecked("no");
			session.save(user);// 更新
			transaction.commit();// 提交事务
		} catch (Exception ex) {
			ex.printStackTrace();
			transaction.rollback();// 事务回滚
		}
		HibernateSessionFactory.closeSession();// 关闭Session对象

	}

	/*
	 * 用户验证
	 * 
	 * @see dao.UserDAO#findUserById(java.lang.String)
	 */
	public User findUserById(String uid) {
		Session session = HibernateSessionFactory.getSession();
		User user = (User) session.get(User.class, uid);
		HibernateSessionFactory.closeSession();
		return user;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.UserDAO#addUser(po.User)
	 */
	public void addUser(User user) {
		Session session = HibernateSessionFactory.getSession();// 获得Session对象
		Transaction transaction = null;// 声明一个事务对象
		try {
			transaction = session.beginTransaction();// 开启事务
			session.save(user);
			transaction.commit();// 提交事务
		} catch (Exception ex) {
			ex.printStackTrace();
			transaction.rollback();// 事务回滚
		}
		HibernateSessionFactory.closeSession();// 关闭Session对象
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.UserDAO#findUserList(util.Page)
	 */
	public List<User> findUserList(Page page) {
		Session session = HibernateSessionFactory.getSession();// 获得Session对象
		Query query = session.createQuery("from user");
		query.setMaxResults(page.getEveryPage());// 设置查询记录数
		query.setFirstResult(page.getBeginIndex());// 设置查询记录起始位置
		@SuppressWarnings("unchecked")
		List<User> list = query.list(); // 查询结果保存到list中
		HibernateSessionFactory.closeSession();// 关闭Session对象
		return list;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.UserDAO#deleteUser(java.lang.String)
	 */
	public void deleteUser(String uid) {
		Session session = HibernateSessionFactory.getSession();// 获得Session对象
		User user = (User) session.get(User.class, uid);
		Transaction transaction = null;// 声明一个事务对象
		try {
			transaction = session.beginTransaction();// 开启事务
			session.delete(user);
			transaction.commit();// 提交事务
		} catch (Exception ex) {
			ex.printStackTrace();
			transaction.rollback();// 事务回滚
		}
		HibernateSessionFactory.closeSession();// 关闭Session对象

	}

}
