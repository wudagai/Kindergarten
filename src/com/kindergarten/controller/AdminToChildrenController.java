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
import com.kindergarten.entity.Children;
import com.kindergarten.entity.Classinfo;
import com.kindergarten.service.ChildrenServiceIfac;

@Controller
@RequestMapping("/Admin")
public class AdminToChildrenController {
	@Resource
	private ChildrenServiceIfac childrenService;

	// 查询所有幼儿
	@RequestMapping("/selectAllChildren.action")
	public ModelAndView selectAllChildren(Children children, HttpServletResponse response, HttpServletRequest request,
			String pageNum, HttpSession session) throws UnsupportedEncodingException {
		if (pageNum == null || "".equals(pageNum)) {

			List<Children> childrenlist = childrenService.selectAllChildren();
			// 所有幼儿信息
			session.setAttribute("childrenlist", childrenlist);

			System.out.println("幼儿信息" + childrenlist);
			PageUtil pu = new PageUtil(childrenlist);
			System.out.println("分页信息" + pu);

			// 获取用户第一页，假设是五条数据
			List<Children> subChildrenlist = null;
			if (childrenlist != null && childrenlist.size() > 0) {
				subChildrenlist = childrenlist.subList(pu.getBeginIndex() - 1, pu.getEndIndex());
			}
			// 分页信息
			session.setAttribute("subChildrenlist", subChildrenlist);

			session.setAttribute("pu", pu);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Admin/ChildrenManage");
			return mav;
		} else {

			// 1.获取保存session中所有用户信息
			List<Children> childrenlist = (List<Children>) session.getAttribute("childrenlist");

			// 2.获取保存在session中的分页信息
			PageUtil pu = (PageUtil) session.getAttribute("pu");
			// 设置当前跳转页码
			pu.setPageNum(Integer.valueOf(pageNum));
			System.out.println("分页信息：" + pu);

			List<Children> subChildrenlist = childrenlist.subList(pu.getBeginIndex() - 1, pu.getEndIndex());

			// 4.跳转到界面显示当前页面员工信息
			session.setAttribute("subChildrenlist", subChildrenlist);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Admin/ChildrenManage");
			return mav;
		}
	}

	// 处理组合模糊查幼儿信息方法
	@RequestMapping("/selectChildrenByIf.action")
	public ModelAndView selectChildrenByIf(Children children, HttpServletResponse response, HttpServletRequest request,
			String pageNum, HttpSession session) throws UnsupportedEncodingException {
		if (pageNum == null || "".equals(pageNum)) {

			List<Children> childrenlist = childrenService.selectChildrenByIf(children);
			// 所有幼儿信息
			session.setAttribute("childrenlist", childrenlist);

			System.out.println(childrenlist);
			PageUtil pu = new PageUtil(childrenlist);
			System.out.println("分页信息" + pu);

			// 获取用户第一页，假设是五条数据
			List<Children> subChildrenlist = null;
			if (childrenlist != null && childrenlist.size() > 0) {
				subChildrenlist = childrenlist.subList(pu.getBeginIndex() - 1, pu.getEndIndex());
			}
			// 分页信息

			session.setAttribute("pu", pu);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Admin/ChildrenManage");
			return mav;
		} else {
			// 1.获取保存session中所有幼儿信息
			List<Children> childrenlist = (List<Children>) session.getAttribute("childrenlist");

			// 2.获取保存在session中的分页信息
			PageUtil pu = (PageUtil) session.getAttribute("pu");
			// 设置当前跳转页码
			pu.setPageNum(Integer.valueOf(pageNum));
			System.out.println("分页信息：" + pu);

			// 3.获取childrenlist的子集
			List<Children> subChildrenlist = childrenlist.subList(pu.getBeginIndex() - 1, pu.getEndIndex());

			// 4.跳转到界面显示当前幼儿员工信息
			session.setAttribute("subChildrenlist", subChildrenlist);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Admin/ChildrenManage");
			return mav;
		}

	}

	@RequestMapping("/removeChildren.action")
	public String removeChildren(Integer childrenId) {
		childrenService.removeChildren(childrenId);
		return "redirect:selectAllChildren.action";
	}

}
