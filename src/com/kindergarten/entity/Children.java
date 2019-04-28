package com.kindergarten.entity;

import java.util.Date;
import java.util.List;

public class Children {
	private Integer childrenId;

	private String childrenName;

	private String childrenSex;

	private Date birthday;

	private Date enterDate;

	private String childrenPhoto;

	private String childrenStat;
	
	private String childrenAddress;

	// children-user many-one
	private User user;
	// children-class many-one
	private Classinfo classinfos;
	// children-medication one-many
	private List<Medication> medications;
	// children-leave ony-many
	private List<ChildrenLeave> childrenleaves;
	
	private List<Examination> examinations;
	

	public Children() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Children(Integer childrenId, String childrenName, String childrenSex, Date birthday, Date enterDate,
			String childrenPhoto, String childrenStat, String childrenAddress, User user, Classinfo classinfos,
			List<Medication> medications, List<ChildrenLeave> childrenleaves, List<Examination> examinations) {
		super();
		this.childrenId = childrenId;
		this.childrenName = childrenName;
		this.childrenSex = childrenSex;
		this.birthday = birthday;
		this.enterDate = enterDate;
		this.childrenPhoto = childrenPhoto;
		this.childrenStat = childrenStat;
		this.childrenAddress = childrenAddress;
		this.user = user;
		this.classinfos = classinfos;
		this.medications = medications;
		this.childrenleaves = childrenleaves;
		this.examinations = examinations;
	}

	public Integer getChildrenId() {
		return childrenId;
	}

	public void setChildrenId(Integer childrenId) {
		this.childrenId = childrenId;
	}

	public String getChildrenName() {
		return childrenName;
	}

	public void setChildrenName(String childrenName) {
		this.childrenName = childrenName;
	}

	public String getChildrenSex() {
		return childrenSex;
	}

	public void setChildrenSex(String childrenSex) {
		this.childrenSex = childrenSex;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Date getEnterDate() {
		return enterDate;
	}

	public void setEnterDate(Date enterDate) {
		this.enterDate = enterDate;
	}

	public String getChildrenPhoto() {
		return childrenPhoto;
	}

	public void setChildrenPhoto(String childrenPhoto) {
		this.childrenPhoto = childrenPhoto;
	}

	public String getChildrenStat() {
		return childrenStat;
	}

	public void setChildrenStat(String childrenStat) {
		this.childrenStat = childrenStat;
	}

	public String getChildrenAddress() {
		return childrenAddress;
	}

	public void setChildrenAddress(String childrenAddress) {
		this.childrenAddress = childrenAddress;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Classinfo getClassinfos() {
		return classinfos;
	}

	public void setClassinfos(Classinfo classinfos) {
		this.classinfos = classinfos;
	}

	public List<Medication> getMedications() {
		return medications;
	}

	public void setMedications(List<Medication> medications) {
		this.medications = medications;
	}

	public List<ChildrenLeave> getChildrenleaves() {
		return childrenleaves;
	}

	public void setChildrenleaves(List<ChildrenLeave> childrenleaves) {
		this.childrenleaves = childrenleaves;
	}

	public List<Examination> getExaminations() {
		return examinations;
	}

	public void setExaminations(List<Examination> examinations) {
		this.examinations = examinations;
	}

	@Override
	public String toString() {
		return "Children [childrenId=" + childrenId + ", childrenName=" + childrenName + ", childrenSex=" + childrenSex
				+ ", birthday=" + birthday + ", enterDate=" + enterDate + ", childrenPhoto=" + childrenPhoto
				+ ", childrenStat=" + childrenStat + ", childrenAddress=" + childrenAddress + ", user=" + user
				+ ", classinfos=" + classinfos + ", medications=" + medications + ", childrenleaves=" + childrenleaves
				+ ", examinations=" + examinations + "]";
	}
	

	

}