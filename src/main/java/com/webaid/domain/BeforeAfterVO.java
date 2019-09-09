package com.webaid.domain;

public class BeforeAfterVO {
	private int no;
	private String clinic_type;
	private String writer;
	private String regdate;
	private int cnt;
	private String title;
	private String content;
	private String use_state;
	private String img_before;
	private String img_after;

	public BeforeAfterVO() {
		super();
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getClinic_type() {
		return clinic_type;
	}

	public void setClinic_type(String clinic_type) {
		this.clinic_type = clinic_type;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
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

	public String getUse_state() {
		return use_state;
	}

	public void setUse_state(String use_state) {
		this.use_state = use_state;
	}

	public String getImg_before() {
		return img_before;
	}

	public void setImg_before(String img_before) {
		this.img_before = img_before;
	}

	public String getImg_after() {
		return img_after;
	}

	public void setImg_after(String img_after) {
		this.img_after = img_after;
	}

	@Override
	public String toString() {
		return "BeforeAfterVO [no=" + no + ", clinic_type=" + clinic_type + ", writer=" + writer + ", regdate="
				+ regdate + ", cnt=" + cnt + ", title=" + title + ", content=" + content + ", use_state=" + use_state
				+ ", img_before=" + img_before + ", img_after=" + img_after + "]";
	}

}
