package action;


import service.AdminService;
import service.AdminServiceImpl;

import com.opensymphony.xwork2.ActionSupport;


@SuppressWarnings("serial")
public class LoginAction extends ActionSupport {
	private String id; 			
	private String password;	
	
	private AdminService adminService = 
		new AdminServiceImpl();

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String execute() throws Exception {
		
		if(adminService.allowLogin(id, password)) {
			return "success";
		}else {
			addActionError("actoin error");
			return "input";
		}
	}
}
