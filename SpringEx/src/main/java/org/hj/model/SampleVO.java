package org.hj.model;

public class SampleVO {
	// 번호
	private int no;
	// 이름
	private String name;
	// 성별
	private String gender;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	@Override
	public String toString() {
		return "SampleVO [no=" + no + ", name=" + name + ", gender=" + gender + ", getNo()=" + getNo() + ", getName()="
				+ getName() + ", getGender()=" + getGender() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
}
