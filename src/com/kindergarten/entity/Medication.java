package com.kindergarten.entity;

import java.util.Date;

public class Medication {
	private Integer medicationId;

	private String symptoms;

	private Date sickTime;

	private String medicine;

	private Date takeMedicineTime;

	private String frequency;

	private String means;

	private String takeMedicineDay;

	private String untowardEffect;

	private String remarks;

	// medication-children many-one;
	private Children children;

	public Medication() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Medication(Integer medicationId, String symptoms, Date sickTime, String medicine, Date takeMedicineTime,
			String frequency, String means, String takeMedicineDay, String untowardEffect, String remarks,
			Children children) {
		super();
		this.medicationId = medicationId;
		this.symptoms = symptoms;
		this.sickTime = sickTime;
		this.medicine = medicine;
		this.takeMedicineTime = takeMedicineTime;
		this.frequency = frequency;
		this.means = means;
		this.takeMedicineDay = takeMedicineDay;
		this.untowardEffect = untowardEffect;
		this.remarks = remarks;
		this.children = children;
	}

	@Override
	public String toString() {
		return "Medication [medicationId=" + medicationId + ", symptoms=" + symptoms + ", sickTime=" + sickTime
				+ ", medicine=" + medicine + ", takeMedicineTime=" + takeMedicineTime + ", frequency=" + frequency
				+ ", means=" + means + ", takeMedicineDay=" + takeMedicineDay + ", untowardEffect=" + untowardEffect
				+ ", remarks=" + remarks + ", children=" + children + "]";
	}

	public Integer getMedicationId() {
		return medicationId;
	}

	public void setMedicationId(Integer medicationId) {
		this.medicationId = medicationId;
	}

	public String getSymptoms() {
		return symptoms;
	}

	public void setSymptoms(String symptoms) {
		this.symptoms = symptoms;
	}

	public Date getSickTime() {
		return sickTime;
	}

	public void setSickTime(Date sickTime) {
		this.sickTime = sickTime;
	}

	public String getMedicine() {
		return medicine;
	}

	public void setMedicine(String medicine) {
		this.medicine = medicine;
	}

	public Date getTakeMedicineTime() {
		return takeMedicineTime;
	}

	public void setTakeMedicineTime(Date takeMedicineTime) {
		this.takeMedicineTime = takeMedicineTime;
	}

	public String getFrequency() {
		return frequency;
	}

	public void setFrequency(String frequency) {
		this.frequency = frequency;
	}

	public String getMeans() {
		return means;
	}

	public void setMeans(String means) {
		this.means = means;
	}

	public String getTakeMedicineDay() {
		return takeMedicineDay;
	}

	public void setTakeMedicineDay(String takeMedicineDay) {
		this.takeMedicineDay = takeMedicineDay;
	}

	public String getUntowardEffect() {
		return untowardEffect;
	}

	public void setUntowardEffect(String untowardEffect) {
		this.untowardEffect = untowardEffect;
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