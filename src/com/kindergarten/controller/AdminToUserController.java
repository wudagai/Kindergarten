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
import com.kindergarten.entity.Admin;
import com.kindergarten.entity.Children;
import com.kindergarten.entity.Teacher;
import com.kindergarten.entity.User;
import com.kindergarten.service.AdminServiceIfac;
import com.kindergarten.service.ChildrenServiceIfac;
import com.kindergarten.service.TeacherServiceIfac;
import com.kindergarten.service.UserServiceIfac;

@Controller
@RequestMapping("/Admin")
public class AdminToUserController {
	@Resource
	private AdminServiceIfac adminrService;
	@Resource
	private UserServiceIfac userService;
   /*
    * 处理用户登录方法
    */ 
	@RequestMapping("/LoginAdmin.action")
	public String LoginAdmin(Admin admin,String adminName, String password,  HttpSession session,
			HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException

	{
		// 首先解决编码
		System.out.println("-----------------");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// 判断用户名密码是否为空
		if ((adminName == null || "".equals(adminName)) || (password == null || "".equals(password))) {
			request.setAttribute("messages", "请输入用户名和密码");
			return "Admin/AdminLogin";
		} else {
			
			// 调用service方法
			Admin adminLogin=adminrService.LoginAdmin(adminName, password);
			System.out.println("adminLogin:" + adminLogin );
			// 判断用户名和密码是否正确
			if (adminLogin != null) {
				// 将用户信息放入session
				session.setAttribute("adminLogin", adminLogin);
				// 重定向到页面
				return "redirect:AdminIndex.jsp";
			} else {
				request.setAttribute("messages", "用户名或者密码错误");
				return "redirect:AdminLogin.jsp";
			}
		} 
	
	}
	
	@RequestMapping("/exit.action")
	public String exit(HttpSession session) {
		// session=request.getSession();
		session.removeAttribute("adminLogin");

		// 2.清空cookie
		// writeCookie(request, response, "", "");

		// 3.重定向到login.jsp
		return "redirect:AdminLogin.jsp";
		// return "User/userlogin";
	}
	//查询所有用户
	@RequestMapping("/selectAllUser.action")
	public ModelAndView selectAllUser(User user,String pageNum,HttpSession session) {
	 if(pageNum==null||"".equals(pageNum)) {
		
		List<User> userlist=adminrService.selectAllUser(user);
		//所有用户信息
		session.setAttribute("userlist", userlist);		
		
		System.out.println(userlist);
		PageUtil pu=new PageUtil(userlist);
		System.out.println("分页信息"+pu);
		
		//获取用户第一页，假设是五条数据
		List<User> subUserlist=null;
		if(userlist!=null&&userlist.size()>0) {
		 subUserlist= userlist.subList(pu.getBeginIndex()-1, pu.getEndIndex());
		}
		session.setAttribute("subUserlist", subUserlist);
		//分页信息
		
		session.setAttribute("pu", pu);
		
		ModelAndView mav=new ModelAndView();
		//mav.addObject("userlist",userlist);
		mav.setViewName("Admin/UserManage");
		return mav;
		}else {
			//1.获取保存session中所有用户信息
			List<User> userlist = (List<User>)session.getAttribute("userlist");
			
			//2.获取保存在session中的分页信息
			PageUtil pu = (PageUtil)session.getAttribute("pu");
			//设置当前跳转页码
			pu.setPageNum(Integer.valueOf(pageNum));
		
			System.out.println("分页信息：" + pu);
			
			//3.获取userlist的子集
			List<User> subUserlist = userlist.subList(pu.getBeginIndex()-1, pu.getEndIndex());
			
			//4.跳转到界面显示当前页面员工信息
			session.setAttribute("subUserlist", subUserlist);
			ModelAndView mav=new ModelAndView();
			mav.setViewName("Admin/UserManage");
			return mav;
			
		}
		
	}
	//处理组合模糊查询用户方法
	@RequestMapping("/selectUserByIf.action")
	public ModelAndView selectUserByIf(User user,String pageNum,HttpSession session) {
		if(pageNum==null||"".equals(pageNum)) {
		
			List<User> userlist=adminrService.selectUserByIf(user);
			//所有用户信息
			session.setAttribute("userlist", userlist);		
			
			System.out.println(userlist);
			PageUtil pu=new PageUtil(userlist);
			System.out.println("分页信息"+pu);
			
			//获取用户第一页，假设是3条数据
			List<User> subUserlist=null;
			if(userlist!=null&&userlist.size()>0) {
			 subUserlist= userlist.subList(pu.getBeginIndex()-1, pu.getEndIndex());
			}
			session.setAttribute("subUserlist", subUserlist);
			//分页信息
			
			session.setAttribute("pu", pu);
			ModelAndView mav=new ModelAndView();
			//mav.addObject("userlist",userlist);
			mav.setViewName("Admin/UserManage");
			return mav;
	  }else {
		//1.获取保存session中所有用户信息
			List<User> userlist = (List<User>)session.getAttribute("userlist");
			
			//2.获取保存在session中的分页信息
			PageUtil pu = (PageUtil)session.getAttribute("pu");
			//设置当前跳转页码
			pu.setPageNum(Integer.valueOf(pageNum));
			System.out.println("分页信息：" + pu);
			
			//3.获取userlist的子集
			List<User> subUserlist = userlist.subList(pu.getBeginIndex()-1, pu.getEndIndex());
			
			//4.跳转到界面显示当前页面员工信息
			session.setAttribute("subUserlist", subUserlist);
			ModelAndView mav=new ModelAndView();
			mav.setViewName("Admin/UserManage");
			return mav;
	  }
		
	}
	
	@RequestMapping("/to_editUser.action")
	public ModelAndView to_editUser(Integer userId, HttpServletRequest request,HttpSession session,HttpServletResponse response) 
			throws UnsupportedEncodingException {
		// 首先解决编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		User user = userService.selectUserInfo(userId);
		ModelAndView mav = new ModelAndView();
		mav.addObject("user", user);
		mav.setViewName("Admin/editUser");
		return mav;
	}
	@RequestMapping("/editUser.action")
	public String editUser(User user,HttpServletRequest request,HttpServletResponse response,HttpSession session) 
			throws UnsupportedEncodingException {
		// 首先解决编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
	    userService.editUser(user);
	    System.out.println("user:"+user);
	    request.setAttribute("user", user);
	   return "Admin/editUser";
	}
	@RequestMapping("/removeUser.action")
	public String removeUser(Integer userId) {
		userService.removeUser(userId);
		System.out.println("----------------------");
		return "redirect:selectAllUser.action";
	}
 }
