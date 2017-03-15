package dao;

import java.util.List;

import po.Comment;
import util.Page;

public interface CommentDAO {
	// user的操作
	public void addComment(Comment comment);

	// user本人和admin的操作
	public void deleteComment(String cid);

	// admin的操
	public List<Comment> findComment(Page page);
}
