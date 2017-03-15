package dao;

import java.util.List;

import po.User;
import util.Page;

public interface UserDAO {
	public User findUserById(String uid);// 用户验证

	public void passexamine(String uid);// 单个通过

	public void refuseexamine(String uid);// 单个拒绝

	public void addUser(User user);// 增加用户

	public void deleteUser(String uid);// 删除用户

	public List<User> findUserList(Page page);// 查找用户列表

}
