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
import com.kindergarten.dao.UserMapper;
import com.kindergarten.entity.Children;
import com.kindergarten.service.AdminServiceIfac;
import com.kindergarten.service.ChildrenServiceIfac;
import com.kindergarten.service.UserServiceIfac;

@Controller
@RequestMapping("/Admin")
public class AdminToAppleController {
	@Resource
	private AdminServiceIfac adminService;
	@Resource
	private ChildrenServiceIfac childrenService;
	
	@Resource
	private UserServiceIfac userService;

	// 查询所有幼儿
	@RequestMapping("/selectAllApple.action")
	public ModelAndView selectAllApple(Children children, HttpServletResponse response, HttpServletRequest request,
			String pageNum, HttpSession session) throws UnsupportedEncodingException {
		if (pageNum == null || "".equals(pageNum)) {

			List<Children> applelist = adminService.selectAllApple(children);
			// 所有幼儿信息
			session.setAttribute("applelist", applelist);

			System.out.println("幼儿信息" + applelist);
			PageUtil pu = new PageUtil(applelist);
			System.out.println("分页信息" + pu);

			// 获取用户第一页，假设是三条数据
			List<Children> subApplelist = null;
			if (applelist != null && applelist.size() > 0) {
				subApplelist = applelist.subList(pu.getBeginIndex() - 1, pu.getEndIndex());
			}
			// 分页信息
			session.setAttribute("subApplelist", subApplelist);

			session.setAttribute("pu", pu);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Admin/AppleManage");
			return mav;
		} else {

			// 1.获取保存session中所有用户信息
			List<Children> applelist = (List<Children>) session.getAttribute("applelist");

			// 2.获取保存在session中的分页信息
			PageUtil pu = (PageUtil) session.getAttribute("pu");
			// 设置当前跳转页码
			pu.setPageNum(Integer.valueOf(pageNum));
			System.out.println("分页信息：" + pu);

			List<Children> subApplelist = applelist.subList(pu.getBeginIndex() - 1, pu.getEndIndex());

			// 4.跳转到界面显示当前页面员工信息
			session.setAttribute("subApplelist", subApplelist);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Admin/AppleManage");
			return mav;
		}
	}
	//删除报名信息
		@RequestMapping("/removeApple.action")
		public String removeApple(Integer childrenId) {
			childrenService.removeChildren(childrenId);
			return "redirect:selectAllApple.action";
		}

	// 修改报名状态：0--1
	@RequestMapping("/editAppleOne.action")
	public String editAppleOne(Integer childrenId) {
		userService.editAppleOne(childrenId);
		return "redirect:selectAllApple.action";
	}

	// 修改报名状态：1--3
	@RequestMapping("/editAppleTwo.action")
	public String editAppleTwo(Integer childrenId) {
		userService.editAppleTwo(childrenId);
		return "redirect:selectAllApple.action";
	}
}
