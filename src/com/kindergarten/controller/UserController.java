package com.kindergarten.controller;


import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kindergarten.Until.ImageUntils;
import com.kindergarten.Until.MD5Util;
import com.kindergarten.entity.Children;
import com.kindergarten.entity.ChildrenLeave;
import com.kindergarten.entity.ClassType;
import com.kindergarten.entity.Classinfo;
import com.kindergarten.entity.User;
import com.kindergarten.service.ChildrenServiceIfac;
import com.kindergarten.service.ClassinfoServiceIfac;
import com.kindergarten.service.UserServiceIfac;


@Controller
@RequestMapping("/User")
public class UserController {
//	HttpServletRequest request,HttpServletResponse response,HttpSession session,
//	Model model,ModelMap modelMap
	@Resource
	private UserServiceIfac userService;
	@Resource
	private ClassinfoServiceIfac classinfoService;
	@Resource
	private ChildrenServiceIfac childrenService;
   /*
    * 处理用户登录方法
    */
	@SuppressWarnings("unused")
	@RequestMapping("/LoginUser.action")
	public String LoginUser(User user,String userName, String password, String code, HttpSession session,
			HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException

	{
		// 首先解决编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		//把明文密码加密后，送到数据库进行比对
		//盐值算法： 本例使用帐号作为盐值加密的盐
	     String pwd = MD5Util.MD5(user.getUserName()+user.getPassword());
		user.setPassword(pwd);
		user.setUserName(userName);
		System.out.println(pwd);
		
		// 将页面验证码（生成的）放入session
		String code_real = (String) session.getAttribute("code");
		// 判断用户名密码是否为空
		if ((userName == null || "".equals(userName)) || (password == null || "".equals(password))) {
			request.setAttribute("messages", "请输入用户名和密码");
			return "User/UserLogin";
			// 判断输入的验证码与生成的验证码是否一致
		} else if (code_real.equalsIgnoreCase(code)) {
			
			// 调用service方法
			User userLogin = (User) userService.LoginUser(user);
			String stat=userLogin.getUserStat();
			System.out.println("stat"+stat);
			System.out.println("user:" + userLogin + "code_real:" + code_real + "code" + code);
			
			// 判断用户名和密码是否正确
			if (userLogin != null) {
				if(stat=="1"||"1".equals(stat)) {
				// 将用户信息放入session
				session.setAttribute("userLogin", userLogin);
				// 重定向到页面
				return "redirect:UserIndex.jsp";
				}else {
					request.setAttribute("messages", "无权限");
					return "User/UserLogin";
					
				}
			} else {
				request.setAttribute("messages", "无权限或账号密码错误");
				return "User/UserLogin";
			}
		} else {
			// 返回登陆页面，提示登陆失败
			request.setAttribute("messages", "验证码错误");
			return "User/UserLogin";
		}
	}


	@RequestMapping("/exit.action")
	public String exit(HttpSession session) {
		// session=request.getSession();
		session.removeAttribute("userLogin");

		// 2.清空cookie
		// writeCookie(request, response, "", "");

		// 3.重定向到login.jsp
		return "User/UserLogin";
		// return "User/userlogin";
	}
	//用户注册
    @RequestMapping("/insertUser.action")
	public String insertUser(User user,HttpSession session,HttpServletRequest request) {
		userService.insertUser(user);
		return "User/UserLogin";

	}
    @RequestMapping("/addUser.action")
	public String addtUser(User user,HttpSession session,HttpServletRequest request) {
		
		return "User/UserLogin";

	}
	
	
	/*
	* 处理查询用户个人信息方法
   */
	@RequestMapping("/selectUserInfo.action")
	public ModelAndView selectUserInfo(Integer userId, HttpSession session) {
		User user = userService.selectUserInfo(userId);
		 System.out.println(user+"-----");
		session.setAttribute("user", user);
		ModelAndView mav = new ModelAndView();
		//mav.addObject("user", user);
		mav.setViewName("User/UserInfo");
		return mav;
	}
   //用户查询他所有的幼儿
	@RequestMapping("/selectChildrenByUser.action")
	public ModelAndView selectChildrenByUser(Integer userId,Children children,User user,HttpSession session, HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException {
		// 首先解决编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		User childrens = userService.selectChildrenByUser(userId);
		System.out.println("childrens:" + childrens);
		ModelAndView mav = new ModelAndView();
		//mav.addObject("childrens", childrens);
		request.setAttribute("ch", childrens);
		mav.setViewName("User/MyChildren");
		return mav;

	}
	
	/**
	 * 处理去用户修改页面
	 */
	@RequestMapping("/to_editUser.action")
	public ModelAndView to_editUser(Integer userId, HttpServletRequest request,HttpSession session,HttpServletResponse response) 
			throws UnsupportedEncodingException {
		// 首先解决编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		//User user = userService.selectUserInfo(userId);
		User user=(User) session.getAttribute("userLogin");
		System.out.println("用户信息："+user);
		ModelAndView mav = new ModelAndView();
		mav.addObject("user", user);
		mav.setViewName("User/UserEdit");
		return mav;
	}
	/*
	 * 处理用户修改方法
	 */
	@RequestMapping("/editUser.action")
	public String editUser(User user,HttpServletRequest request,HttpServletResponse response,HttpSession session) 
			throws UnsupportedEncodingException {
		// 首先解决编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
	    userService.editUser(user);
	    System.out.println("user:"+user);
	    request.setAttribute("user", user);
	   return "User/UserInfo";
	}
	//查询班级类别
	@RequestMapping("selectClassinfo.action")
	public ModelAndView selectClassinfo(Integer ctyId,HttpSession session,HttpServletRequest request) {
		   List<ClassType> classType=classinfoService.selectClassType();
		   User user= (User) session.getAttribute("userLogin");
	       request.setAttribute("user", user);	 
		   session.setAttribute("classType", classType);
		   ModelAndView mav=new ModelAndView();
		   mav.setViewName("User/UserApple"); 
		  return mav;
	}
	//根据班级类别查询班级
	@RequestMapping("selectClassinfoByType.action")
    public @ResponseBody List<Classinfo> selectClassinfoByType(Integer ctyId) {
		List<Classinfo> classinfos=classinfoService.selectClassinfoByType(ctyId);  
			 System.out.println("-----------classinfos----------------"+classinfos);
			 return classinfos;
		}
	//报名处理，图片上传处理
	@RequestMapping("insertChildren.action")
	public String insertChildren(Children children,HttpSession session,MultipartFile pictureFile,HttpServletRequest request) 
			throws IOException {
		  String imgPath =ImageUntils.upload(request,pictureFile);
			if(imgPath!=null){
				//将上传图片的地址存储到数据库中
				children.setChildrenPhoto(imgPath);
			}
		
	      userService.insertChildren(children);
		      return "redirect:selectApple.action";
	}
  //查询报名进度
	@RequestMapping("/selectApple.action")
	public ModelAndView selectApple(Integer userId,HttpSession session, HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException {
		// 首先解决编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		User user=(User) session.getAttribute("userLogin");
		request.setAttribute("user", user);
		User apples= userService.selectApple(user.getUserId());
	     session.setAttribute("apples", apples);
		System.out.println("apples:" + apples);
		ModelAndView mav = new ModelAndView();
		//request.setAttribute("apples", apples);
		mav.setViewName("User/MyApple");
		return mav;

	}
	//去往修改报名信息页面
	@RequestMapping("/to_editApple.action")
	public ModelAndView to_editApple(Integer childrenId,Integer ctyId,HttpSession session, HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException {
		List<ClassType> classType=classinfoService.selectClassType();
		session.setAttribute("classType", classType);
		User user=(User) session.getAttribute("userLogin");
		request.setAttribute("user", user);
	    Children apples=userService.selectAppleById(childrenId);
	    System.out.println("apples"+apples);
	    session.setAttribute("apples", apples);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("User/AppleEdit");
		return mav;

	}
	//修改报名信息
	@RequestMapping("/editApple.action")
	public String editApple(Children children,HttpServletRequest request,MultipartFile pictureFile,HttpServletResponse response,HttpSession session) 
			throws IOException {
		// 首先解决编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		 String imgPath =ImageUntils.upload(request,pictureFile);
			if(imgPath!=null){
				//将上传图片的地址存储到数据库中
				children.setChildrenPhoto(imgPath);
			}
	    userService.editApple(children);
	    System.out.println("children:"+children);
	  
	    return "redirect:selectApple.action";
	}
	//取消报名
	@RequestMapping("/removeApple.action")
	public String removeApple(Integer childrenId) {
		childrenService.removeChildren(childrenId);
		return "redirect:selectApple.action";
	}
	//去到请假页面
	@RequestMapping("/tochildrenLeave.action")
	public String tochildrenLeave(Integer childrenId,HttpSession session, HttpServletRequest request) {
		Children children=childrenService.selectChildrenById(childrenId);
		session.setAttribute("children", children);
		return "User/childrenLeave";
		
	}
	
	//为幼儿请假
	@RequestMapping("/childrenLeave.action")
	public String childrenLeave(ChildrenLeave childrenLeave,HttpSession session, HttpServletRequest request) {
		userService.childrenLeave(childrenLeave);
		return "User/Myleave";
	}
	//某用户查询他孩子的请假情况
	@RequestMapping("/selectAllLeave.action")
	public String selectAllLeave(Integer userId,HttpSession session, HttpServletRequest request) {
		User user=(User) session.getAttribute("userLogin");
		User users=userService.selectAllLeave(user.getUserId());
		System.out.println();
		session.setAttribute("users", users);
		return "User/Myleave";		
	}

}
