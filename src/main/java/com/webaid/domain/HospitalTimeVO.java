package com.webaid.domain;

public class HospitalTimeVO {
	private int no;
	private String h_date;
	private String start_time;
	private String end_time;

	public HospitalTimeVO() {
		super();
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getH_date() {
		return h_date;
	}

	public void setH_date(String h_date) {
		this.h_date = h_date;
	}

	public String getStart_time() {
		return start_time;
	}

	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}

	public String getEnd_time() {
		return end_time;
	}

	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}

	@Override
	public String toString() {
		return "HospitalTimeVO [no=" + no + ", h_date=" + h_date + ", start_time=" + start_time + ", end_time="
				+ end_time + "]";
	}

}
