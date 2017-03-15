package po;

public class User {
	private String uid;
	private String password;
	private String name;
	private String telephone;
	private String ischecked;

	public User(String uid, String password, String name, String telephone,
			String ischecked) {
		this.uid = uid;
		this.password = password;
		this.name = name;
		this.telephone = telephone;
		this.ischecked = ischecked;
	}

	public User() {

	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getIschecked() {
		return ischecked;
	}

	public void setIschecked(String ischecked) {
		this.ischecked = ischecked;
	}

}
