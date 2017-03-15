package po;

import java.util.Calendar;

public class Discuss {
	private int did;
	private int tid;
	private String uid;
	private Calendar time;
	private String content;

	public Discuss(int did, int tid, String uid, Calendar time, String content) {
		super();
		this.did = did;
		this.tid = tid;
		this.uid = uid;
		this.time = time;
		this.content = content;
	}

	public int getDid() {
		return did;
	}

	public void setDid(int did) {
		this.did = did;
	}

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public Calendar getTime() {
		return time;
	}

	public void setTime(Calendar time) {
		this.time = time;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}
