package com.kindergarten.entity;

import java.util.List;

public class Classinfo {
	private Integer classId;

	private String className;

	// class-teacher many-one
	private Teacher teacher;

	// class-children one-many
	private List<Children> childrens;

	private ClassType classtype;

	@Override
	public String toString() {
		return "Classinfo [classId=" + classId + ", className=" + className + ", teacher=" + teacher + ", childrens="
				+ childrens + ", classtype=" + classtype + "]";
	}

	public Classinfo(Integer classId, String className, Teacher teacher, List<Children> childrens,
			ClassType classtype) {
		super();
		this.classId = classId;
		this.className = className;
		this.teacher = teacher;
		this.childrens = childrens;
		this.classtype = classtype;
	}

	public Classinfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getClassId() {
		return classId;
	}

	public void setClassId(Integer classId) {
		this.classId = classId;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public List<Children> getChildrens() {
		return childrens;
	}

	public void setChildrens(List<Children> childrens) {
		this.childrens = childrens;
	}

	public ClassType getClasstype() {
		return classtype;
	}

	public void setClasstype(ClassType classtype) {
		this.classtype = classtype;
	}

}