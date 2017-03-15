package po;

public class Theme {
	private String did;
	private String uid;
	private String time;
	private String content;
	private String theme;

	public Theme(String did, String uid, String time, String content,
			String theme) {
		super();
		this.did = did;
		this.uid = uid;
		this.time = time;
		this.content = content;
		this.theme = theme;
	}

	public String getDid() {
		return did;
	}

	public void setDid(String did) {
		this.did = did;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

}
