package com.kindergarten.dao;

import java.util.List;

import com.kindergarten.entity.Children;
import com.kindergarten.entity.ChildrenLeave;
import com.kindergarten.entity.Examination;
import com.kindergarten.entity.Medication;



public interface ChildrenMapper {
	//查询幼儿的详细信息
	public Children queryChildrenById(int childrenId);

	//查询幼儿体检信息(一人多个体检信息根据幼儿id查询)
	public Children queryExaminationById(int childrenId);	
	
	//查询用药信息（一人有多个用药信息根据幼儿id可以查询出他的所有用药信息）
	public Children queryMedicationById(int childrenId);
	//查询所有幼儿信息
	public List<Children> queryAllChildren();
	//组合+模糊查询幼儿信息
	public List<Children> queryChildrenByIf(Children children);
	
	//删除某幼儿
	public void deleteChildren(int childrenId);
	//幼儿报名
	public void appleChildren(Children children);
	
	 // 查询某个幼儿的某个体检信息
	public Examination queryExamination(int examinationId);
	
	 // 查询某个幼儿的某个用药信息
     public Medication queryMedication(int medicationId);
     //幼儿请假
     public void leaveChildren(ChildrenLeave childrenLeave);

}
