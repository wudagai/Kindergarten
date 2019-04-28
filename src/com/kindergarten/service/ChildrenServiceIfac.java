package com.kindergarten.service;

import java.util.List;

import com.kindergarten.entity.Children;
import com.kindergarten.entity.Examination;
import com.kindergarten.entity.Medication;

public interface ChildrenServiceIfac {
	//查询某个幼儿的信息
	public Children selectChildrenById(int childrenId);
	//查询某个幼儿的体检信息
	public Children selectExaminationByChildren(int childrenId);
	
	//查询某个幼儿的用药信息
	public Children selectMedicationByChildren(int childrenId);
	
	//查询所有用户信息
	public List<Children> selectAllChildren();
	
	//组合+模糊查询所有幼儿信息
	
	public List<Children> selectChildrenByIf(Children children);
	
	 //删除某幼儿
     public void removeChildren(int childrenId);
     
	 // 查询某个幼儿的某个体检信息
	public Examination selectExamination(int examinationId);
	
	 // 查询某个幼儿的某个用药信息
    public Medication selectMedication(int medicationId);
	
}
