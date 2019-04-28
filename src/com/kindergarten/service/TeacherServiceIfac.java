package com.kindergarten.service;

import java.util.List;

import com.kindergarten.entity.Children;
import com.kindergarten.entity.Classinfo;
import com.kindergarten.entity.Examination;
import com.kindergarten.entity.Medication;
import com.kindergarten.entity.Teacher;
public interface TeacherServiceIfac {
	//老师登录
		public Teacher LoginTeacher(String loginName,String password);
		//查询所有老师
		public List<Teacher> selectAllTeacher();
		//模糊+组合查询老师信息
		public List<Teacher> selectTeacherByIf(Teacher teacher);
		 //删除某教师
		public void removeTeacher(int teacherId);
		
		//修改教师信息
		public void editTeacher(Teacher teacher);
		//根据ID查询老师信息
		public Teacher queryTeacherBy(int teacherId);
		//我管理的班级
		public Teacher selectTeaherClass(int teacherId);
		
		//我管理的某个班级详情
		public Classinfo selectClassChildren(int classId);
		
		//编辑体检信息
		public void editExamination(Examination examination);
		
		//为指定幼儿增加体检信息
		public void instertExamination(Examination examination);
		
		//编辑用药信息
		public void editMedication(Medication medication);
		//为指定幼儿增加用药信息
		public void insterMedication(Medication medication);
        
		//删除体检信息
	     public void removeExamination(int examinationId);
			
		 //删除用药信息
		   public void removeMedication(int medicationId);
		   
		 //查询我管理的班级下的某学生的所有请假信息 
		   
		   public Children selectLeave(int childrenId); 
		   
		 //删除请假信息
		   public void removeleave(int leaveId);
		   
		 //教师更改请假状态0--1
		   public void editLeaveOne(int leaveId);
		   //教师更改请假状态1--3
		   public void editLeaveTwo(int leaveId);

		
		
}
