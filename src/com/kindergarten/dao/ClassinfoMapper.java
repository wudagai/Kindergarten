package com.kindergarten.dao;

import java.util.List;

import com.kindergarten.entity.ClassType;
import com.kindergarten.entity.Classinfo;

public interface ClassinfoMapper {
       //查询所有班级信息
		public List<Classinfo> queryAllClassinfo();
		//组合+模糊查询班级信息
		public List<Classinfo> queryClassinfoByIf(Classinfo classinfo);
		
		//删除某班级
		public void deleteClassinfo(int classId);
		
		//查询班级不包括班级类别
		public List<Classinfo> queryClassinfo();
		
		//查询班级类别
		
		public List<ClassType> queryClassType();
		
		//根据班级类别查询班级
		
		public List<Classinfo> queryClassinfoByType(int ctyId);
	
}
