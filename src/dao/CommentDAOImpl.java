package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import po.Comment;
import util.Page;

public class CommentDAOImpl implements CommentDAO {

	/*
	 * (non-Javadoc)
	 * @see dao.CommentDAO#addComment(po.Comment)
	 */
	public void addComment(Comment comment) {
		Session session = HibernateSessionFactory.getSession();// 获得Session对象
		Transaction transaction = null;// 声明一个事务对象
		try {
			transaction = session.beginTransaction();// 开启事务
			session.save(comment);// 保存信息
			transaction.commit();// 提交事务
		} catch (Exception ex) {
			ex.printStackTrace();
			transaction.rollback();// 事务回滚
		}
		HibernateSessionFactory.closeSession();// 关闭Session对象
		
	}

	/*
	 * (non-Javadoc)
	 * @see dao.CommentDAO#deleteComment(java.lang.String)
	 */
	public void deleteComment(String cid) {
		Session session = HibernateSessionFactory.getSession();// 获得Session对象
		Comment comment = (Comment) session.get(Comment.class, cid);
		Transaction transaction = null;// 声明一个事务对象
		try {
			transaction = session.beginTransaction();// 开启事务
			session.delete(comment);
			transaction.commit();// 提交事务
		} catch (Exception ex) {
			ex.printStackTrace();
			transaction.rollback();// 事务回滚
		}
		HibernateSessionFactory.closeSession();// 关闭Session对象
	}

	/*
	 * (non-Javadoc)
	 * @see dao.CommentDAO#findComment(util.Page)
	 */
	public List<Comment> findComment(Page page) {
		Session session = HibernateSessionFactory.getSession();// 获得Session对象
		Query query = session.createQuery("from comment");
		query.setMaxResults(page.getEveryPage());// 设置查询记录数
		query.setFirstResult(page.getBeginIndex());// 设置查询记录起始位置
		@SuppressWarnings("unchecked")
		List<Comment> list = query.list(); // 查询结果保存到list中
		HibernateSessionFactory.closeSession();// 关闭Session对象
		return list;
	}

}
