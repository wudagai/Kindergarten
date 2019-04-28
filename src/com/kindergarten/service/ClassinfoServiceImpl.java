package com.kindergarten.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kindergarten.dao.ClassinfoMapper;
import com.kindergarten.dao.TeacherMapper;
import com.kindergarten.entity.ClassType;
import com.kindergarten.entity.Classinfo;
import com.kindergarten.entity.Teacher;
@Service("classinfoService")
public class ClassinfoServiceImpl implements ClassinfoServiceIfac {
	@Resource
	private ClassinfoMapper classinfoMapper;

	@Override
	public List<Classinfo> selectAllClassinfo() {
		return classinfoMapper.queryAllClassinfo();
	}

	@Override
	public List<Classinfo> selectClassinfoByIf(Classinfo classinfo) {
		
		return classinfoMapper.queryClassinfoByIf(classinfo);
	}

	@Override
	public void removeClassinfo(int classId) {
		classinfoMapper.deleteClassinfo(classId);
		
	}

	@Override
	public List<Classinfo> selectClassinfo() {
		
		return classinfoMapper.queryClassinfo();
	}

	@Override
	public List<ClassType> selectClassType() {
		
		return classinfoMapper.queryClassType();
	}

	@Override
	public List<Classinfo> selectClassinfoByType(int ctyId) {
		
		return classinfoMapper.queryClassinfoByType(ctyId);
	}
 

}
