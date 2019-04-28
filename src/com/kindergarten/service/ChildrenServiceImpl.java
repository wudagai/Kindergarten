package com.kindergarten.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kindergarten.dao.ChildrenMapper;
import com.kindergarten.entity.Children;
import com.kindergarten.entity.Examination;
import com.kindergarten.entity.Medication;

@Service("childrenService")
public class ChildrenServiceImpl implements ChildrenServiceIfac {
	@Resource
	private ChildrenMapper childrenMapper;

	public Children selectChildrenById(int childrenId) {

		return childrenMapper.queryChildrenById(childrenId);
	}

	// 查询某个幼儿的体检信息
	public Children selectExaminationByChildren(int childrenId) {

		return childrenMapper.queryExaminationById(childrenId);
	}

	// 查询某个幼儿的用药信息
	public Children selectMedicationByChildren(int childrenId) {

		return childrenMapper.queryMedicationById(childrenId);
	}

	@Override
	public List<Children> selectAllChildren() {
		
		return childrenMapper.queryAllChildren();
	}

	@Override
	public List<Children> selectChildrenByIf(Children children) {
		
		return childrenMapper.queryChildrenByIf(children);
	}

	@Override
	public void removeChildren(int childrenId) {
		childrenMapper.deleteChildren(childrenId);
		
	}

	@Override
	public Examination selectExamination(int examinationId) {
	
		return childrenMapper.queryExamination(examinationId);
	}

	@Override
	public Medication selectMedication(int medicationId) {
	
		return childrenMapper.queryMedication(medicationId);
	}


}
