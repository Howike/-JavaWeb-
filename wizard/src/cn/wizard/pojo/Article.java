package cn.wizard.pojo;

public class Article {
	private int aid;
	private String title;
	private String time;
	private int click;
	private int uid;
	private int type_id;
	private String content;
	
	public Article(int article_id, String article_title, String article_time, int article_click, int user_id,
			int type_id, String article_content) {
		super();
		this.aid = article_id;
		this.title = article_title;
		this.time = article_time;
		this.click = article_click;
		this.uid = user_id;
		this.type_id = type_id;
		this.content = article_content;
	}
	public Article() {
		super();
	}
	@Override
	public String toString() {
		return "Article [aid=" + aid + ", title=" + title + ", atime=" + time
				+ ", aclick=" + click + ", uid=" + uid + ", type_id=" + type_id
				+ ", article_content=" + content + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + click;
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		result = prime * result + aid;
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		result = prime * result + ((time == null) ? 0 : time.hashCode());
		result = prime * result + type_id;
		result = prime * result + uid;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Article other = (Article) obj;
		if (click != other.click)
			return false;
		if (content == null) {
			if (other.content != null)
				return false;
		} else if (!content.equals(other.content))
			return false;
		if (aid != other.aid)
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		if (time == null) {
			if (other.time != null)
				return false;
		} else if (!time.equals(other.time))
			return false;
		if (type_id != other.type_id)
			return false;
		if (uid != other.uid)
			return false;
		return true;
	}
	public int getArticle_id() {
		return aid;
	}
	public void setArticle_id(int article_id) {
		this.aid = article_id;
	}
	public String getArticle_title() {
		return title;
	}
	public void setArticle_title(String article_title) {
		this.title = article_title;
	}
	public String getArticle_time() {
		return time;
	}
	public void setArticle_time(String article_time) {
		this.time = article_time;
	}
	public int getArticle_click() {
		return click;
	}
	public void setArticle_click(int article_click) {
		this.click = article_click;
	}
	public int getUser_id() {
		return uid;
	}
	public void setUser_id(int user_id) {
		this.uid = user_id;
	}
	public int getType_id() {
		return type_id;
	}
	public void setType_id(int type_id) {
		this.type_id = type_id;
	}
	public String getArticle_content() {
		return content;
	}
	public void setArticle_content(String article_content) {
		this.content = article_content;
	}
}
