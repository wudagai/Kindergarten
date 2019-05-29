package com.kindergarten.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.kindergarten.entity.Children;
import com.kindergarten.entity.ChildrenLeave;
import com.kindergarten.entity.User;

public interface UserMapper {
	//查询用户密码
	/*public User findUserByNameAndPwd(@Param("userName")String userName,@Param("password")String password);*/
	public User findUserByNameAndPwd(User user);
	//根据ID查询单条用户信息
	public User queryUserById(int userId);
	//查询所有用户信息
	public List<User> queryAllUser();
	//修改个人信息
	public void updateUserById(User user);
	
	//查询自己孩子基本信息（根据userId）
	public User queryChildrenByUser(int userId);
	//删除某用户
	public void deleteUser(int userId);
	//查询报名
	public User queryApple(int userId);
	
	//查询某个幼儿的报名信息
	public Children queryAppleById(int childrenId);
	
	//修改报名信息
	public void updateApple(Children children);

	//查询所有报名信息
	public List<Children> queryAllApple(Children children);
	
	//修改报名状态0--1
	public void updateAppleOne(int childrenId);
	
	//修改报名状态1--3
	public void updateAppleTwo(int childrenId);

	//某用户查询所有请假信息
	public User queryAllLeave(int userId);

	
	//用户注册
	public void addUser(User user);
	
	/*//批量修改
	@SuppressWarnings("rawtypes")
	public void updateUserByIds(Map map);
	*/
}
