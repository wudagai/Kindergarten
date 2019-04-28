package com.kindergarten.service;

import java.util.List;

import com.kindergarten.entity.Admin;
import com.kindergarten.entity.Children;
import com.kindergarten.entity.User;

public interface AdminServiceIfac {
	//管理员登录
	public Admin LoginAdmin(String adminName,String password);
	//查询所有用戶信息
	public List<User> selectAllUser(User user);
	//组合+模糊查询用户信息
	public List<User> selectUserByIf(User user);
	/*//修改某个用户的信息
	public void editUser_admin(User user);*/
	
	//查询所有报名信息
	public List<Children> selectAllApple(Children children);
	
}
