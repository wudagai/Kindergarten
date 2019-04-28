package com.kindergarten.entity;

import java.util.List;

public class Teacher {
	private Integer teacherId;

	private String loginName;

	private String password;

	private String teacherName;

	private String teacherSex;

	private String hight;

	private String teacherPhone;

	private String teacherphoto;

	private String colleges;

	// teacher-class one-many
	private List<Classinfo> classinfos;

	public Teacher() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Teacher(Integer teacherId, String loginName, String password, String teacherName, String teacherSex,
			String hight, String teacherPhone, String teacherphoto, String colleges, List<Classinfo> classinfos) {
		super();
		this.teacherId = teacherId;
		this.loginName = loginName;
		this.password = password;
		this.teacherName = teacherName;
		this.teacherSex = teacherSex;
		this.hight = hight;
		this.teacherPhone = teacherPhone;
		this.teacherphoto = teacherphoto;
		this.colleges = colleges;
		this.classinfos = classinfos;
	}

	@Override
	public String toString() {
		return "Teacher [teacherId=" + teacherId + ", loginName=" + loginName + ", password=" + password
				+ ", teacherName=" + teacherName + ", teacherSex=" + teacherSex + ", hight=" + hight + ", teacherPhone="
				+ teacherPhone + ", teacherphoto=" + teacherphoto + ", colleges=" + colleges + ", classinfos="
				+ classinfos + "]";
	}

	public Integer getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(Integer teacherId) {
		this.teacherId = teacherId;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	public String getTeacherSex() {
		return teacherSex;
	}

	public void setTeacherSex(String teacherSex) {
		this.teacherSex = teacherSex;
	}

	public String getHight() {
		return hight;
	}

	public void setHight(String hight) {
		this.hight = hight;
	}

	public String getTeacherPhone() {
		return teacherPhone;
	}

	public void setTeacherPhone(String teacherPhone) {
		this.teacherPhone = teacherPhone;
	}

	public String getTeacherphoto() {
		return teacherphoto;
	}

	public void setTeacherphoto(String teacherphoto) {
		this.teacherphoto = teacherphoto;
	}

	public String getColleges() {
		return colleges;
	}

	public void setColleges(String colleges) {
		this.colleges = colleges;
	}

	public List<Classinfo> getClassinfos() {
		return classinfos;
	}

	public void setClassinfos(List<Classinfo> classinfos) {
		this.classinfos = classinfos;
	}

}