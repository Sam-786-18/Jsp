package com.mhb.beans;

public class StudentBeans {
	private Long sno;
	private String sname;
	private double avg;
	public StudentBeans() {
		System.out.println("StudentBeans");
	}
	public Long getSno() {
		return sno;
	}
	public void setSno(Long sno) {
		this.sno = sno;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public double getAvg() {
		return avg;
	}
	public void setAvg(double avg) {
		this.avg = avg;
	}

}
