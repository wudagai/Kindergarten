package com.kindergarten.service;

import com.kindergarten.entity.Children;
import com.kindergarten.entity.ChildrenLeave;
import com.kindergarten.entity.User;

public interface UserServiceIfac {
   //用户登录
	/*public User LoginUser(String userName,String password);*/
	public User LoginUser(User user);
	//修改个人信息
	public void editUser(User user);
   //查询某个人信息
	public User selectUserInfo(int userId);
	//查询某个人的幼儿的基本信息
	public User selectChildrenByUser(int userId);
   //删除某用户
	public void removeUser(int userId);
	//报名
	public void insertChildren(Children children);
	//查看报名
	public User selectApple(int userId);
	
	//查询某个幼儿的报名信息
	public Children selectAppleById(int childrenId);
	
	//修改报名信息
	public void editApple(Children children);
	
	//修改报名状态0--1
	public void editAppleOne(int childrenId);
		
	//修改报名状态1--3
	public void editAppleTwo(int childrenId);
	
	 //幼儿请假
    public void childrenLeave(ChildrenLeave childrenLeave);
    
  //某用户查询所有请假信息
  	public User selectAllLeave(int userId);
  	
  //用户注册
  	public void insertUser(User user);
  
}
