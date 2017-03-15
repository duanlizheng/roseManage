package service;

import dao.AdminDAO;
import dao.AdminDAOImpl;
import po.Admin;


public class AdminServiceImpl implements AdminService{
	private AdminDAO adminDAO = new AdminDAOImpl();
	
	public boolean allowLogin(String adminID, String password) {
		Admin admin = adminDAO.findByAdminID(adminID);
		if(admin == null) {
			return false;
		}else {
			if(password.equals(admin.getPassword())) {
				return true;
			}else{
				return false;
			}
		}
	}
}
