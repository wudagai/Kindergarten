package com.kindergarten.service;

import java.util.List;

import com.kindergarten.entity.ClassType;
import com.kindergarten.entity.Classinfo;
public interface ClassinfoServiceIfac {
		//查询所有班级
		public List<Classinfo> selectAllClassinfo();
		//模糊+组合查询班级信息
		public List<Classinfo> selectClassinfoByIf(Classinfo classinfo);
		 //删除某班级
		public void removeClassinfo(int classId);
		
		//查询班级
		public List<Classinfo> selectClassinfo();
		
		//查询班级类别
		public List<ClassType> selectClassType();
		
		//根据班级类别查询班级
		public List<Classinfo> selectClassinfoByType(int ctyId);
}
