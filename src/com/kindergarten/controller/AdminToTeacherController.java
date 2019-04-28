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

import com.kindergarten.Until.PageUtil;
import com.kindergarten.entity.Teacher;
import com.kindergarten.service.TeacherServiceIfac;

@Controller
@RequestMapping("/Admin")
public class AdminToTeacherController {
	@Resource
	private TeacherServiceIfac teacherService;

	// 查询所有老师
	@RequestMapping("/selectAllTeacher.action")
	public ModelAndView selectAllTeacher(Teacher teacher, String pageNum, HttpSession session) {
		if (pageNum == null || "".equals(pageNum)) {
			List<Teacher> teacherlist = teacherService.selectAllTeacher();
			// 所有教师信息
			session.setAttribute("teacherlist", teacherlist);

			System.out.println(teacherlist);
			PageUtil pu = new PageUtil(teacherlist);
			System.out.println("分页信息" + pu);

			// 获取用户第一页，假设是五条数据
			List<Teacher> subTeacherlist = null;
			if (teacherlist != null && teacherlist.size() > 0) {
				subTeacherlist = teacherlist.subList(pu.getBeginIndex() - 1, pu.getEndIndex());
			}
			session.setAttribute("subTeacherlist", subTeacherlist);
			// 分页信息

			session.setAttribute("pu", pu);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Admin/TeacherManage");
			return mav;
		} else {
			// 1.获取保存session中所有用户信息
			List<Teacher> teacherlist = (List<Teacher>) session.getAttribute("teacherlist");

			// 2.获取保存在session中的分页信息
			PageUtil pu = (PageUtil) session.getAttribute("pu");
			// 设置当前跳转页码
			pu.setPageNum(Integer.valueOf(pageNum));
			System.out.println("分页信息：" + pu);

			// 3.获取teacherlist的子集
			List<Teacher> subTeacherlist = teacherlist.subList(pu.getBeginIndex() - 1, pu.getEndIndex());

			// 4.跳转到界面显示当前页面员工信息
			session.setAttribute("subTeacherlist", subTeacherlist);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Admin/TeacherManage");
			return mav;

		}
	}

	// 组合+模糊查询所有老师信息
	@RequestMapping("/selectTeacherByIf.action")
	public ModelAndView selectTeacherByIf(Teacher teacher, String pageNum, HttpSession session) {
		if (pageNum == null || "".equals(pageNum)) {
			List<Teacher> teacherlist = teacherService.selectTeacherByIf(teacher);
			// 所有用户信息
			session.setAttribute("teacherlist", teacherlist);

			System.out.println("教师：" + teacherlist);
			PageUtil pu = new PageUtil(teacherlist);
			System.out.println("分页信息" + pu);

			// 获取用户第一页，假设是五条数据
			List<Teacher> subTeacherlist = null;
			if (teacherlist != null && teacherlist.size() > 0) {
				subTeacherlist = teacherlist.subList(pu.getBeginIndex() - 1, pu.getEndIndex());
			}
			// 分页信息

			session.setAttribute("pu", pu);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("redirect:TeacherManage.jsp");
			return mav;
		} else {
			// 1.获取保存session中所有用户信息
			List<Teacher> teacherlist = (List<Teacher>) session.getAttribute("teacherlist");

			// 2.获取保存在session中的分页信息
			PageUtil pu = (PageUtil) session.getAttribute("pu");
			// 设置当前跳转页码
			pu.setPageNum(Integer.valueOf(pageNum));
			System.out.println("分页信息：" + pu);

			// 3.获取teacherlist的子集
			List<Teacher> subTeacherlist = teacherlist.subList(pu.getBeginIndex() - 1, pu.getEndIndex());

			// 4.跳转到界面显示当前页面员工信息
			session.setAttribute("subTeacherlist", subTeacherlist);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("redirect:TeacherManage.jsp");
			return mav;

		}
	}
//删除教师
	@RequestMapping("/removeTeacher.action")
	public String removeTeacher(Integer teacherId) {
		teacherService.removeTeacher(teacherId);
		return "redirect:selectAllTeacher.action";
	}
	//去修改教师页面
	@RequestMapping("/to_editTeacher.action")
	public ModelAndView to_editTeacher(Integer teacherId, HttpServletRequest request,HttpSession session,HttpServletResponse response) 
			throws UnsupportedEncodingException {
		// 首先解决编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Teacher teacher=teacherService.queryTeacherBy(teacherId);
		ModelAndView mav = new ModelAndView();
		mav.addObject("teacher", teacher);
		mav.setViewName("Admin/editTeacher");
		return mav;
	}
	//修改教师
	@RequestMapping("/editTeacher.action")
	public String editTeacher(Teacher teacher,HttpServletRequest request,HttpServletResponse response,HttpSession session) 
			throws UnsupportedEncodingException {
		// 首先解决编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
	   teacherService.editTeacher(teacher);
	    System.out.println("teacher:"+teacher);
	    request.setAttribute("teacher", teacher);
	   return "Admin/editTeacher";
	}

}
