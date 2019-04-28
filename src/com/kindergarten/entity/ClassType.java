package com.kindergarten.entity;

import java.util.List;

public class ClassType {
	private Integer classTypeId;
	private String classTypeName;
	private List<Classinfo> classinfos;

	@Override
	public String toString() {
		return "ClassType [classTypeId=" + classTypeId + ", classTypeName=" + classTypeName + ", classinfos="
				+ classinfos + "]";
	}

	public ClassType(Integer classTypeId, String classTypeName, List<Classinfo> classinfoss) {
		super();
		this.classTypeId = classTypeId;
		this.classTypeName = classTypeName;
		classinfos = classinfoss;
	}

	public ClassType() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getClassTypeId() {
		return classTypeId;
	}

	public void setClassTypeId(Integer classTypeId) {
		this.classTypeId = classTypeId;
	}

	public String getClassTypeName() {
		return classTypeName;
	}

	public void setClassTypeName(String classTypeName) {
		this.classTypeName = classTypeName;
	}

	public List<Classinfo> getclassinfos() {
		return classinfos;
	}

	public void setclassinfos(List<Classinfo> classinfoss) {
		classinfos = classinfoss;
	}

}
