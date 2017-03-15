package po;

public class Comment {
	private String cid;
	private String rid;
	private String content;
	private String time;
	private String uid;

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getRid() {
		return rid;
	}

	public void setRid(String rid) {
		this.rid = rid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public Comment(String cid, String rid, String content, String time,
			String uid) {
		super();
		this.cid = cid;
		this.rid = rid;
		this.content = content;
		this.time = time;
		this.uid = uid;
	}

}
