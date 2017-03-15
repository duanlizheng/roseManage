package dao;

import po.Admin;

public interface AdminDAO {
	/*
	 * superadmin对admin的操作
	 */
	public void addAdmin(String uid);// 增加管理员

	public void deleteAdmin(String aid);// 删除管理员

	/*
	 * admin
	 */
	public Admin findByAdminID(String adminID);// 根据adminid查找admin

}
