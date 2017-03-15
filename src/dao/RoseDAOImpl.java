package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import po.Rose;
import util.Page;

public class RoseDAOImpl implements RoseDAO {

	/*
	 * addRose
	 * 
	 * @see dao.AdminDAO#addRose(po.Rose)
	 */
	public void addRose(Rose rose) {
		Session session = HibernateSessionFactory.getSession();// 鑾峰緱Session瀵硅薄
		Transaction transaction = null;// 澹版槑涓�釜浜嬪姟瀵硅薄
		try {
			transaction = session.beginTransaction();// 寮�惎浜嬪姟
			session.save(rose);// 淇濆瓨淇℃伅
			transaction.commit();// 鎻愪氦浜嬪姟
		} catch (Exception ex) {
			ex.printStackTrace();
			transaction.rollback();// 浜嬪姟鍥炴粴
		}
		HibernateSessionFactory.closeSession();// 鍏抽棴Session瀵硅薄
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.RoseDAO#updateRose(po.Rose)
	 */
	public void updateRose(Rose rose) {
		Session session = HibernateSessionFactory.getSession();// 鑾峰緱Session瀵硅薄
		Transaction transaction = null;// 澹版槑涓�釜浜嬪姟瀵硅薄
		try {
			transaction = session.beginTransaction();// 寮�惎浜嬪姟
			session.update(rose);// 淇濆瓨淇℃伅
			transaction.commit();// 鎻愪氦浜嬪姟
		} catch (Exception ex) {
			ex.printStackTrace();
			transaction.rollback();// 浜嬪姟鍥炴粴
		}
		HibernateSessionFactory.closeSession();// 鍏抽棴Session瀵硅薄
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.RoseDAO#findRoseById(java.lang.String)
	 */
	public Rose findRoseById(String rid) {
		Session session = HibernateSessionFactory.getSession();
		Rose rose = (Rose) session.get(Rose.class, rid);
		HibernateSessionFactory.closeSession();
		return rose;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.RoseDAO#deleteRose(java.lang.String)
	 */
	public void deleteRose(String rid) {
		Session session = HibernateSessionFactory.getSession();// 鑾峰緱Session瀵硅薄
		Rose rose = (Rose) session.get(Rose.class, rid);
		Transaction transaction = null;// 澹版槑涓�釜浜嬪姟瀵硅薄
		try {
			transaction = session.beginTransaction();// 寮�惎浜嬪姟
			session.delete(rose);
			transaction.commit();// 鎻愪氦浜嬪姟
		} catch (Exception ex) {
			ex.printStackTrace();
			transaction.rollback();// 浜嬪姟鍥炴粴
		}
		HibernateSessionFactory.closeSession();// 鍏抽棴Session瀵硅薄
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.RoseDAO#findRoseList()
	 */
	public List<Rose> findRoseList(Page page) {
		Session session = HibernateSessionFactory.getSession();// 鑾峰緱Session瀵硅薄
		Query query = session.createQuery("from rose");
		query.setMaxResults(page.getEveryPage());// 璁剧疆鏌ヨ璁板綍鏁�
		query.setFirstResult(page.getBeginIndex());// 璁剧疆鏌ヨ璁板綍璧峰浣嶇疆
		@SuppressWarnings("unchecked")
		List<Rose> list = query.list(); // 鏌ヨ缁撴灉淇濆瓨鍒發ist涓�
		HibernateSessionFactory.closeSession();// 鍏抽棴Session瀵硅薄
		return list;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.RoseDAO#importRose()
	 */
	public void importRose(String file) {
		
	  }
	

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.RoseDAO#exportRose()
	 */
	public void exportRose() {
		// TODO Auto-generated method stub

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.RoseDAO#uploadpic(java.lang.String)
	 */
	public void uploadpic(String url) {
		// TODO Auto-generated method stub

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.RoseDAO#totalcount()
	 */
	public int totalcount() {
		Session session = HibernateSessionFactory.getSession();// 鑾峰緱Session瀵硅薄
		Query query = session.createQuery("from rose");
		@SuppressWarnings("rawtypes")
		List list = query.list(); // 鏌ヨ缁撴灉淇濆瓨鍒發ist涓�
		int count = list.size();
		HibernateSessionFactory.closeSession();// 鍏抽棴Session瀵硅薄
		return count;
	}

	@Override
	public void importRose() {
		// TODO Auto-generated method stub
		
	}
}
