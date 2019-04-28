package com.kindergarten.entity;

import java.util.Date;

public class Examination {
	private Integer examinationId;

	private Date examinationDate;

	private String weight;

	private String hight;

	private String hearing;

	private String vision;

	private String teethNumber;

	private String infectiousDisease;

	private String remarks;

	// examination-children one-one
	private Children children;

	public Examination() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Examination(Integer examinationId, Date examinationDate, String weight, String hight, String hearing,
			String vision, String teethNumber, String infectiousDisease, String remarks, Children children) {
		super();
		this.examinationId = examinationId;
		this.examinationDate = examinationDate;
		this.weight = weight;
		this.hight = hight;
		this.hearing = hearing;
		this.vision = vision;
		this.teethNumber = teethNumber;
		this.infectiousDisease = infectiousDisease;
		this.remarks = remarks;
		this.children = children;
	}

	@Override
	public String toString() {
		return "Examination [examinationId=" + examinationId + ", examinationDate=" + examinationDate + ", weight="
				+ weight + ", hight=" + hight + ", hearing=" + hearing + ", vision=" + vision + ", teethNumber="
				+ teethNumber + ", infectiousDisease=" + infectiousDisease + ", remarks=" + remarks + ", children="
				+ children + "]";
	}

	public Integer getExaminationId() {
		return examinationId;
	}

	public void setExaminationId(Integer examinationId) {
		this.examinationId = examinationId;
	}

	public Date getExaminationDate() {
		return examinationDate;
	}

	public void setExaminationDate(Date examinationDate) {
		this.examinationDate = examinationDate;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getHight() {
		return hight;
	}

	public void setHight(String hight) {
		this.hight = hight;
	}

	public String getHearing() {
		return hearing;
	}

	public void setHearing(String hearing) {
		this.hearing = hearing;
	}

	public String getVision() {
		return vision;
	}

	public void setVision(String vision) {
		this.vision = vision;
	}

	public String getTeethNumber() {
		return teethNumber;
	}

	public void setTeethNumber(String teethNumber) {
		this.teethNumber = teethNumber;
	}

	public String getInfectiousDisease() {
		return infectiousDisease;
	}

	public void setInfectiousDisease(String infectiousDisease) {
		this.infectiousDisease = infectiousDisease;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public Children getChildren() {
		return children;
	}

	public void setChildren(Children children) {
		this.children = children;
	}

}