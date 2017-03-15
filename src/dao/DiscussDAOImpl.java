package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import po.Discuss;
import util.Page;

public class DiscussDAOImpl implements DiscussDAO {

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.DiscussDAO#deleteDiscuss(java.lang.String)
	 */
	public void deleteDiscuss(String tid) {
		Session session = HibernateSessionFactory.getSession();// 获得Session对象
		Discuss Discuss = (Discuss) session.get(Discuss.class, tid);
		Transaction transaction = null;// 声明一个事务对象
		try {
			transaction = session.beginTransaction();// 开启事务
			session.delete(Discuss);
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
	 * @see dao.DiscussDAO#addDiscuss(po.Discuss)
	 */
	public void addDiscuss(Discuss Discuss) {
		Session session = HibernateSessionFactory.getSession();// 获得Session对象
		Transaction transaction = null;// 声明一个事务对象
		try {
			transaction = session.beginTransaction();// 开启事务
			session.save(Discuss);// 保存信息
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
	 * @see dao.DiscussDAO#findDiscussList(util.Page)
	 */
	public List<Discuss> findDiscussList(Page page) {
		Session session = HibernateSessionFactory.getSession();// 获得Session对象
		Query query = session.createQuery("from Discuss");
		query.setMaxResults(page.getEveryPage());// 设置查询记录数
		query.setFirstResult(page.getBeginIndex());// 设置查询记录起始位置
		@SuppressWarnings("unchecked")
		List<Discuss> list = query.list(); // 查询结果保存到list中
		HibernateSessionFactory.closeSession();// 关闭Session对象
		return list;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.DiscussDAO#totalCount()
	 */
	public int totalCount() {
		Session session = HibernateSessionFactory.getSession();// 获得Session对象
		Query query = session.createQuery("from Discuss");
		@SuppressWarnings("rawtypes")
		List list = query.list(); // 查询结果保存到list中
		int count = list.size();
		HibernateSessionFactory.closeSession();// 关闭Session对象
		return count;
	}

}
