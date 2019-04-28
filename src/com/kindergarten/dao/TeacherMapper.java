package com.kindergarten.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kindergarten.entity.Children;
import com.kindergarten.entity.Classinfo;
import com.kindergarten.entity.Examination;
import com.kindergarten.entity.Medication;
import com.kindergarten.entity.Teacher;


public interface TeacherMapper {
	//查询老师登录名密码
	public Teacher findTeacherByNameAndPwd(@Param("loginName")String loginName,@Param("password")String password);
	//查询所有老师信息
	public List<Teacher> queryAllTeacher();
	//组合+模糊查询老师信息
	public List<Teacher> queryTeacherByIf(Teacher teacher);
	
	//删除某老师
	public void deleteTeacher(int teacherId);
	//修改老师信息
	public void updateTeacherById(Teacher teacher);
	//根据ID查询老师信息
	public Teacher queryTeacherById(int teacherId);
	//我管理的班级
	public Teacher queryTeaherClass(int teacherId);
	
	//我管理的某个班级详情
	public Classinfo queryClassChildren(int classId);
	
	//编辑体检信息
	public void updateExamination(Examination examination);
	//为指定幼儿增加体检信息
	public void addExamination(Examination examination);
	
	//编辑用药信息
	public void updateMedication(Medication medication);
	
	//为指定幼儿增加用药信息
	public void addMedication(Medication medication);

   //删除体检信息
	public void deleteExamination(int examinationId);
	
	//删除用药信息
   public void deleteMedication(int medicationId);
   
 //删除请假信息
   public void deleteleave(int leaveId);
   
   
   //教师更改请假状态0--1
   public void updateLeaveOne(int leaveId);
   //教师更改请假状态1--3
   public void updateLeaveTwo(int leaveId);
   
   //查询我管理的班级下的某学生的所有请假信息 
   
   public Children queryLeave(int childrenId); 

}
