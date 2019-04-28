package com.kindergarten.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kindergarten.dao.TeacherMapper;
import com.kindergarten.entity.Children;
import com.kindergarten.entity.Classinfo;
import com.kindergarten.entity.Examination;
import com.kindergarten.entity.Medication;
import com.kindergarten.entity.Teacher;
@Service("teacherService")
public class TeacherServiceImpl implements TeacherServiceIfac {
	@Resource
	private TeacherMapper teacherMapper;
  //老师登录
	public Teacher LoginTeacher(String loginName, String password) {
		
		return teacherMapper.findTeacherByNameAndPwd(loginName, password);
	}
	@Override
	public List<Teacher> selectAllTeacher() {
		
		return teacherMapper.queryAllTeacher();
	}
	@Override
	public List<Teacher> selectTeacherByIf(Teacher teacher) {
		
		return teacherMapper.queryTeacherByIf(teacher);
	}
	@Override
	public void removeTeacher(int teacherId) {
		teacherMapper.deleteTeacher(teacherId);
		
	}
	@Override
	public void editTeacher(Teacher teacher) {
		teacherMapper.updateTeacherById(teacher);
		
	}
	@Override
	public Teacher queryTeacherBy(int teacherId) {
		
		return teacherMapper.queryTeacherById(teacherId);
	}
	@Override
	public Teacher selectTeaherClass(int teacherId) {
		return teacherMapper.queryTeaherClass(teacherId);
	}
	@Override
	public Classinfo selectClassChildren(int classId) {
		
		return teacherMapper.queryClassChildren(classId);
	}
	@Override
	public void editExamination(Examination examination) {
		teacherMapper.updateExamination(examination);
		
	}
	@Override
	public void instertExamination(Examination examination) {
		teacherMapper.addExamination(examination);
		
	}
	@Override
	public void editMedication(Medication medication) {
		teacherMapper.updateMedication(medication);
		
	}
	@Override
	public void insterMedication(Medication medication) {
		teacherMapper.addMedication(medication);
		
	}
	@Override
	public void removeExamination(int examinationId) {
		teacherMapper.deleteExamination(examinationId);
		
	}
	@Override
	public void removeMedication(int medicationId) {
		teacherMapper.deleteMedication(medicationId);
		
	}
	@Override
	public Children selectLeave(int childrenId) {
	
		return teacherMapper.queryLeave(childrenId);
	}
	@Override
	public void removeleave(int leaveId) {
		teacherMapper.deleteleave(leaveId);
	}
	@Override
	public void editLeaveOne(int leaveId) {
		teacherMapper.updateLeaveOne(leaveId);
		
	}
	@Override
	public void editLeaveTwo(int leaveId) {
		teacherMapper.updateLeaveTwo(leaveId);
		
	}
	
}
