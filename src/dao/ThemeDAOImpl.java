package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import po.Theme;
import util.Page;

public class ThemeDAOImpl implements ThemeDAO {

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.ThemeDAO#deleteTheme(java.lang.String)
	 */
	public void deleteTheme(String tid) {
		Session session = HibernateSessionFactory.getSession();// 获得Session对象
		Theme Theme = (Theme) session.get(Theme.class, tid);
		Transaction transaction = null;// 声明一个事务对象
		try {
			transaction = session.beginTransaction();// 开启事务
			session.delete(Theme);
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
	 * @see dao.ThemeDAO#addTheme(po.Theme)
	 */
	public void addTheme(Theme theme) {
		Session session = HibernateSessionFactory.getSession();// 获得Session对象
		Transaction transaction = null;// 声明一个事务对象
		try {
			transaction = session.beginTransaction();// 开启事务
			session.save(theme);// 保存信息
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
	 * @see dao.ThemeDAO#findThemeList(util.Page)
	 */
	public List<Theme> findThemeList(Page page) {
		Session session = HibernateSessionFactory.getSession();// 获得Session对象
		Query query = session.createQuery("from theme");
		query.setMaxResults(page.getEveryPage());// 设置查询记录数
		query.setFirstResult(page.getBeginIndex());// 设置查询记录起始位置
		@SuppressWarnings("unchecked")
		List<Theme> list = query.list(); // 查询结果保存到list中
		HibernateSessionFactory.closeSession();// 关闭Session对象
		return list;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.ThemeDAO#totalCount()
	 */
	public int totalCount() {
		Session session = HibernateSessionFactory.getSession();// 获得Session对象
		Query query = session.createQuery("from theme");
		@SuppressWarnings("rawtypes")
		List list = query.list(); // 查询结果保存到list中
		int count = list.size();
		HibernateSessionFactory.closeSession();// 关闭Session对象
		return count;
	}

}
