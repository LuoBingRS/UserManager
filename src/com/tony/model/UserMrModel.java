package com.tony.model;

import java.io.Serializable;
import java.util.Date;

public class UserMrModel implements Serializable {
	private String userid;
	private String name;
	private String phonenumber;
	private String sex;
	private String salary;
	private Date birthday;
	private String department;
	private String bossid;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getBossid() {
		return bossid;
	}
	public void setBossid(String bossid) {
		this.bossid = bossid;
	}
	
}