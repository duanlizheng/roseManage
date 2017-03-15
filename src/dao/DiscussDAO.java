package dao;

import java.util.List;

import po.Discuss;
import util.Page;

public interface DiscussDAO {
	// user本人和admin的操作
	public void deleteDiscuss(String did);

	// user的操作
	public void addDiscuss(Discuss discuss);

	// admin的操作
	public List<Discuss> findDiscussList(Page page);

	public int totalCount();

}
