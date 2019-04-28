package com.kindergarten.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kindergarten.entity.Children;
import com.kindergarten.entity.ChildrenLeave;
import com.kindergarten.entity.Classinfo;
import com.kindergarten.entity.Examination;
import com.kindergarten.entity.Medication;
import com.kindergarten.entity.Teacher;
import com.kindergarten.entity.User;
import com.kindergarten.service.ChildrenServiceIfac;
import com.kindergarten.service.TeacherServiceIfac;
import com.kindergarten.service.UserServiceIfac;

@Controller
@RequestMapping("/Teacher")
public class TeacherController {

	@Resource
	private TeacherServiceIfac teacherService;
	@Resource
	private ChildrenServiceIfac childrenService;
	@Resource
	private UserServiceIfac userService;

	/*
	 * 处理教师登录方法
	 */
	@RequestMapping("/LoginTeacher.action")
	public String LoginUser(Teacher teacher, String loginName, String password, HttpSession session,
			HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException

	{
		// 首先解决编码
		System.out.println("-----------------");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// 判断用户名密码是否为空
		if ((loginName == null || "".equals(loginName)) || (password == null || "".equals(password))) {
			request.setAttribute("messages", "请输入用户名和密码");
			return "Teacher/TeacherLogin";
		} else {

			// 调用service方法
			Teacher teacherLogin = (Teacher) teacherService.LoginTeacher(loginName, password);
			System.out.println("Teacher:" + teacherLogin);
			// 判断用户名和密码是否正确
			if (teacherLogin != null) {
				// 将用户信息放入session
				session.setAttribute("teacherLogin", teacherLogin);
				// 重定向到页面
				return "redirect:TeacherIndex.jsp";
			} else {
				request.setAttribute("messages", "用户名或者密码错误");
				return "redirect:TeacherLogin.jsp";
			}
		}

	}

	@RequestMapping("/exit.action")
	public String exit(HttpSession session) {

		session.removeAttribute("teacherLogin");

		return "redirect:Tser/TeacherLogin";

	}

	// 处理我管理的班级的方法
	@RequestMapping("/selectTeaherClass.action")
	public String selectTeaherClass(HttpSession session, HttpServletRequest request) {
		Teacher teacher = (Teacher) session.getAttribute("teacherLogin");
		Teacher teach = teacherService.selectTeaherClass(teacher.getTeacherId());
		System.out.println(teach);
		session.setAttribute("teach", teach);
		return "Teacher/TeacherClass";

	}

	// 处理我管理的某个班级的详情（幼儿信息）
	@RequestMapping("/selectClassChildren.action")
	public String selectClassChildren(Integer classId, HttpSession session, HttpServletRequest request) {
		Classinfo classinfo = teacherService.selectClassChildren(classId);
		session.setAttribute("classinfo", classinfo);
		return "Teacher/ChildrenClass";

	}

	// 查询某个幼儿的详细信息
	@RequestMapping("/selectChildrenById.action")
	public ModelAndView selectChildrenById(Integer childrenId, HttpServletResponse response, HttpServletRequest request,
			HttpSession session) throws UnsupportedEncodingException {
		Children children = childrenService.selectChildrenById(childrenId);
		session.setAttribute("children", children);
		System.out.println(children);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Teacher/TeacherChildren");
		return mav;
	}

	// 处理幼儿体检信息方法
	@RequestMapping("/selectExaminationByChildren.action")
	public ModelAndView selectExaminationByChildren(Integer childrenId, HttpServletResponse response,
			HttpServletRequest request, HttpSession session) throws UnsupportedEncodingException {
		Children examination = childrenService.selectExaminationByChildren(childrenId);
		ModelAndView mav = new ModelAndView();
		session.setAttribute("examination", examination);
		mav.setViewName("Teacher/Examination");
		return mav;

	}

	
//去往编辑体检信息页面
	@RequestMapping("/selectExamination.action")
	public ModelAndView selectExamination(Integer examinationId, HttpServletResponse response,
			HttpServletRequest request, HttpSession session) throws UnsupportedEncodingException {
		Examination examination = childrenService.selectExamination(examinationId);
		ModelAndView mav = new ModelAndView();
		session.setAttribute("examination", examination);
		mav.setViewName("Teacher/editExamination");
		return mav;

	}

	// 编辑体检信息
	@RequestMapping("/editExamination.action")
	public String editExamination(Examination examination, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) throws UnsupportedEncodingException {
		teacherService.editExamination(examination);
		request.setAttribute("examination", examination);
		return "Teacher/editExamination";
	}

	// 去到增加体检信息页面
	@RequestMapping("/toinstertExamination.action")
	public String toinstertExamination(Examination examination, HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		Children children = (Children) session.getAttribute("children");
		session.setAttribute("children", children);
		return "Teacher/addExamination";
	}

	// 为指定幼儿增加体检信息
	@RequestMapping("/instertExamination.action")
	public String instertExamination(Examination examination, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {
		teacherService.instertExamination(examination);
		return "Teacher/addExamination";
	}
	
	// 处理幼儿用药信息方法
		@RequestMapping("/selectMedicationByChildren.action")
		public ModelAndView selectMedicationByChildren(Integer childrenId, HttpServletResponse response,
				HttpServletRequest request, HttpSession session) throws UnsupportedEncodingException {
			Children childrenmedication = childrenService.selectMedicationByChildren(childrenId);
			ModelAndView mav = new ModelAndView();
			session.setAttribute("childrenmedication", childrenmedication);
			mav.setViewName("Teacher/Medication");
			return mav;
		}
		//去往编辑用药信息页面
		@RequestMapping("/selectMedication.action")
		public ModelAndView selectMedication(Integer medicationId, HttpServletResponse response,
				HttpServletRequest request, HttpSession session) throws UnsupportedEncodingException {
			 Medication medication = childrenService.selectMedication(medicationId);
			 ModelAndView mav = new ModelAndView();
			 session.setAttribute("medication", medication);
			 mav.setViewName("Teacher/editMedication");
			 return mav;

		}
		// 编辑用药信息
		@RequestMapping("/editMedication.action")
		public String editMedication(Medication medication, HttpServletRequest request, HttpServletResponse response,
				HttpSession session) throws UnsupportedEncodingException {
			teacherService.editMedication(medication);
			request.setAttribute("medication", medication);
			return "Teacher/editMedication";
		}
		
		// 去到增加用药信息页面
		@RequestMapping("/toinstertMedication.action")
		public String toinstertMedication(Examination examination, HttpServletRequest request,
				HttpServletResponse response, HttpSession session) {
			Children children = (Children) session.getAttribute("children");
			session.setAttribute("children", children);
			return "Teacher/addMedication";
		}
		// 为指定幼儿增加用药信息
		@RequestMapping("/instertMedication.action")
		public String instertMedication(Medication medication, HttpServletRequest request, HttpServletResponse response,
				HttpSession session) {
			teacherService.insterMedication(medication);
			return "Teacher/addMedication";
		}
		//删除某幼儿用药信息
			@RequestMapping("/removeMedication.action")
			public String removeMedication(Integer medicationId, HttpServletRequest request, HttpServletResponse response,
					HttpSession session) {
				teacherService.removeMedication(medicationId);
				return "redirect:Medication.jsp";
			}
			//删除某幼儿体检信息
			@RequestMapping("/removeExamination.action")
			public String removeExamination(Integer examinationId, HttpServletRequest request, HttpServletResponse response,
					HttpSession session) {
				teacherService.removeExamination(examinationId);
				return "redirect:Examination.jsp";
			}
			
			// 查询我管理的班级下的学生的所有请假信息 -->
			@RequestMapping("/selectLeave.action")
			public String selectLeave(Integer childrenId,HttpSession session, HttpServletRequest request) {
				Children children1=(Children) session.getAttribute("children");
				Children children=teacherService.selectLeave(children1.getChildrenId());
				System.out.println(children);
				session.setAttribute("children", children);
				return "Teacher/LeaveManage";
			}		
			   
			//删除某幼儿用药信息
			@RequestMapping("/removeleave.action")
			public String removeleave(Integer leaveId, HttpServletRequest request, HttpServletResponse response,
					HttpSession session) {
				teacherService.removeleave(leaveId);
				return "redirect:selectLeave.action";
			}
			
			// 修改请假状态：0--1
			@RequestMapping("/editLeaveOne.action")
			public String editLeaveOne(Integer leaveId) {
				teacherService.editLeaveOne(leaveId);
				return "redirect:selectLeave.action";
			}

			// 修改请假状态：1--3
			@RequestMapping("/editLeaveTwo.action")
			public String editLeaveTwo(Integer leaveId) {
				teacherService.editLeaveTwo(leaveId);
				return "redirect:selectLeave.action";
			}
}