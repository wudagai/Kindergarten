package com.kindergarten.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.kindergarten.Until.PageUtil;
import com.kindergarten.entity.Classinfo;
import com.kindergarten.entity.Classinfo;
import com.kindergarten.service.ClassinfoServiceIfac;

@Controller
@RequestMapping("/Admin")
public class AdminToClassinfoController {
	@Resource
	private ClassinfoServiceIfac classinfoService;

	// 查询所有班级
	@RequestMapping("/selectAllClassinfo.action")
	public ModelAndView selectAllClassinfo(Classinfo classinfo, String pageNum, HttpSession session) {
		if (pageNum == null || "".equals(pageNum)) {
			List<Classinfo> classinfolist = classinfoService.selectAllClassinfo();
			// 所有班级信息
			session.setAttribute("classinfolist", classinfolist);

			System.out.println(classinfolist);
			PageUtil pu = new PageUtil(classinfolist);
			System.out.println("分页信息" + pu);

			// 获取用户第一页，假设是五条数据
			List<Classinfo> subClassinfolist = null;
			if (classinfolist != null && classinfolist.size() > 0) {
				subClassinfolist = classinfolist.subList(pu.getBeginIndex() - 1, pu.getEndIndex());
			}
			session.setAttribute("subClassinfolist", subClassinfolist);
			// 分页信息

			session.setAttribute("pu", pu);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Admin/ClassinfoManage");
			return mav;
		} else {
			// 1.获取保存session中所有班级信息
			List<Classinfo> classinfolist = (List<Classinfo>) session.getAttribute("classinfolist");

			// 2.获取保存在session中的分页信息
			PageUtil pu = (PageUtil) session.getAttribute("pu");
			// 设置当前跳转页码
			pu.setPageNum(Integer.valueOf(pageNum));
			System.out.println("分页信息：" + pu);

			// 3.获取classinfolist的子集
			List<Classinfo> subClassinfolist = classinfolist.subList(pu.getBeginIndex() - 1, pu.getEndIndex());

			// 4.跳转到界面显示当前页面员工信息
			session.setAttribute("subClassinfolist", subClassinfolist);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Admin/ClassinfoManage");
			return mav;
		}
	}

	// 处理组合模糊查班级信息方法
	@RequestMapping("/selectClassinfoByIf.action")
	public ModelAndView selectClassinfoByIf(Classinfo classinfo, String pageNum, HttpSession session) {
		if (pageNum == null || "".equals(pageNum)) {
			List<Classinfo> classinfolist = classinfoService.selectClassinfoByIf(classinfo);
			// 所有班级信息
			session.setAttribute("classinfolist", classinfolist);

			System.out.println(classinfolist);
			PageUtil pu = new PageUtil(classinfolist);
			System.out.println("分页信息" + pu);

			// 获取用户第一页，假设是五条数据
			List<Classinfo> subClassinfolist = null;
			if (classinfolist != null && classinfolist.size() > 0) {
				subClassinfolist = classinfolist.subList(pu.getBeginIndex() - 1, pu.getEndIndex());
			}
			// 分页信息

			session.setAttribute("pu", pu);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Admin/ClassinfoManage");
			return mav;
		} else {
			// 1.获取保存session中所有班级信息
			List<Classinfo> classinfolist = (List<Classinfo>) session.getAttribute("classinfolist");

			// 2.获取保存在session中的分页信息
			PageUtil pu = (PageUtil) session.getAttribute("pu");
			// 设置当前跳转页码
			pu.setPageNum(Integer.valueOf(pageNum));
			System.out.println("分页信息：" + pu);

			// 3.获取classinfolist的子集
			List<Classinfo> subClassinfolist = classinfolist.subList(pu.getBeginIndex() - 1, pu.getEndIndex());

			// 4.跳转到界面显示当前班级信息
			session.setAttribute("subClassinfolist", subClassinfolist);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Admin/ClassinfoManage");
			return mav;
		}

	}

	@RequestMapping("/removeClassinfo.action")
	public String removeClassinfo(Integer classId) {
		classinfoService.removeClassinfo(classId);
		return "redirect:selectAllClassinfo.action";
	}
	
   public ModelAndView selectClassinfo() {
	   List<Classinfo> classinfos=classinfoService.selectClassinfo();
	   ModelAndView mav=new ModelAndView();
	   mav.addObject("classinfos",classinfos);
	   mav.setViewName("Admin/Apply"); 
	  return mav;
  
   }
}
