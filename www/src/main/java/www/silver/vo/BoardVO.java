package www.silver.vo;

public class BoardVO {
	String type;
	String username;
	String title;
	String content;
	String pass;
	String viewmember;
	String indate;
	String[] filename;
	String num;
	
	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String[] getFilename() {
		return filename;
	}

	public void setFilename(String[] filename) {
		this.filename = filename;
	}

	@Override
	public String toString() {
		return "BoardVO [type=" + type + ", username=" + username + ", title=" + title + ", content=" + content
				+ ", pass=" + pass + ", viewmember=" + viewmember + ", indate=" + indate + "]";
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getViewmember() {
		return viewmember;
	}
	public void setViewmember(String viewmember) {
		this.viewmember = viewmember;
	}
	public String getIndate() {
		return indate;
	}
	public void setIndate(String indate) {
		this.indate = indate;
	}
	
	
}
